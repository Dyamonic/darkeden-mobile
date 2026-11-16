# Mobile private server

The original mobile client remains the renderer and UI. A separate Python
process owns persistent characters, progression, combat, populations and loot.
The mobile adaptation uses JSON requests over its existing native HTTP client;
it does not pretend to speak the incompatible PC or publisher wire protocol.
ADB reverse exposes a loopback-only development server to this emulator.

The server reads the mobile SQLite/map assets and the exported V2 reference
tables. Name/ID mappings are explicit generated artifacts with provenance.
Mobile levels, models, collision and item IDs are preserved; PC attributes,
population rules and formulas are adapted behind those identifiers.

Character import is an administrator-side one-time operation from a backed-up
roster. Normal client requests never supply HP, XP, currency or inventory.
Commands have sequence numbers for retry safety. Server snapshots are cached
locally; connection loss cannot silently resume client-authoritative combat.
Original local mode remains available when no server configuration is installed.

SQLite server state and connection keys live outside Git. The initial setup is
private PvE; shared-world multiplayer, public hosting and production accounts
require additional work and are not implied by a local server process.

Implementation order: catalog/mappings and map validation; persistent game
authority and progression/combat; native client transport and reconciliation;
loot/inventory/equipment; quests/skills/GM; integration and restart verification.
