"""Export readable Chinese text from the bundled Cocos SQLite data to CSV."""
from __future__ import annotations

import csv
import re
import sqlite3
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DB = ROOT / "editable-apk" / "assets" / "win32" / "res" / "data" / "data.bin"
OUT = ROOT / "game-translation" / "game_text.csv"
CJK = re.compile(r"[\u3400-\u9fff]")


def quote_ident(value: str) -> str:
    return '"' + value.replace('"', '""') + '"'


def main() -> None:
    OUT.parent.mkdir(parents=True, exist_ok=True)
    db = sqlite3.connect(f"file:{DB.as_posix()}?mode=ro", uri=True)
    rows: list[tuple[object, ...]] = []
    tables = db.execute(
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name"
    ).fetchall()
    for (table,) in tables:
        qt = quote_ident(table)
        columns = [row[1] for row in db.execute(f"PRAGMA table_info({qt})")]
        if not columns:
            continue
        english_column = next(
            (name for name in ("ENName", "EnName", "EnglishName", "NameEN") if name in columns),
            "",
        )
        selected = ", ".join(quote_ident(c) for c in columns)
        for record in db.execute(f"SELECT rowid, {selected} FROM {qt}"):
            rowid, *values = record
            value_by_col = dict(zip(columns, values))
            for column, value in value_by_col.items():
                if not isinstance(value, str) or not CJK.search(value):
                    continue
                known_english = ""
                if english_column and column in ("Name", "Name2"):
                    candidate = value_by_col.get(english_column)
                    if isinstance(candidate, str):
                        known_english = candidate
                rows.append((table, rowid, column, value, known_english, ""))

    with OUT.open("w", encoding="utf-8-sig", newline="") as f:
        writer = csv.writer(f, quoting=csv.QUOTE_MINIMAL)
        writer.writerow(("table", "rowid", "column", "source_zh", "existing_english", "translation"))
        writer.writerows(rows)
    db.close()
    print(f"Exported {len(rows)} Chinese text fields from {len(tables)} tables to {OUT}")


if __name__ == "__main__":
    main()
