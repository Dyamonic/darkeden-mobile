"""Apply non-empty translations from game-translation/game_text.csv to a DB copy."""
from __future__ import annotations

import csv
import shutil
import sqlite3
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DB = ROOT / "editable-apk" / "assets" / "win32" / "res" / "data" / "data.bin"
CSV = ROOT / "game-translation" / "game_text.csv"


def ident(value: str) -> str:
    return '"' + value.replace('"', '""') + '"'


def main() -> None:
    if not CSV.exists():
        raise SystemExit(f"Translation file not found: {CSV}. Run export_game_text.py first.")
    backup = DB.with_suffix(DB.suffix + ".bak")
    if not backup.exists():
        shutil.copy2(DB, backup)
    updates = 0
    with DB.open("r+b") as stream:
        stream.flush()
    db = sqlite3.connect(DB)
    try:
        with CSV.open(encoding="utf-8-sig", newline="") as f:
            for entry in csv.DictReader(f):
                translated = (entry.get("translation") or "").strip()
                if not translated:
                    continue
                table = entry["table"]
                column = entry["column"]
                # Validate identifiers against the live database before composing SQL.
                columns = {r[1] for r in db.execute(f"PRAGMA table_info({ident(table)})")}
                if column not in columns:
                    raise ValueError(f"Unknown column: {table}.{column}")
                db.execute(
                    f"UPDATE {ident(table)} SET {ident(column)}=? WHERE rowid=?",
                    (translated, int(entry["rowid"])),
                )
                updates += 1
        db.commit()
    except Exception:
        db.rollback()
        raise
    finally:
        db.close()
    print(f"Applied {updates} translations to {DB}. Original database backup: {backup}")


if __name__ == "__main__":
    main()
