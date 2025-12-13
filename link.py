#!/usr/bin/env python3

from pathlib import Path

files_dir = Path(__file__).parent / "source"
files = [file.relative_to(files_dir) for file in files_dir.rglob("*") if file.is_file()]
dirs = set(filter(lambda d: str(d) != ".", map(lambda file: file.parent, files)))
dirs.add(Path(".vim/swap"))
for dir in dirs:
    (Path.home() / dir).mkdir(parents=True, exist_ok=True)
for file in files:
    home = Path.home() / file
    home.unlink(missing_ok=True)
    home.symlink_to(files_dir / file)
