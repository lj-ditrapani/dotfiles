#!/usr/bin/env python3

from pathlib import Path

dot_dir = Path(__file__).parent

files = [
    ".zshrc",
    ".gitconfig",
    ".xinitrc",
    ".Xresources",
    ".config/sway/config",
    ".config/i3/config",
    ".config/i3status/config",
    ".config/kitty/kitty.conf",
    ".config/nvim/init.vim",
    ".config/fish/config.fish",
    ".config/user-dirs.dirs",
    ".gnupg/gpg-agent.conf",
    ".config/nvim/indent/coffee.vim",
    ".config/nvim/indent/java.vim",
    ".config/nvim/indent/javascript.vim",
    ".config/nvim/indent/kotlin.vim",
    ".config/nvim/indent/markdown.vim",
    ".config/nvim/indent/ruby.vim",
    ".config/nvim/indent/typescript.vim",
]
dirs = set(filter(lambda d: str(d) != ".", map(lambda file: Path(file).parent, files)))
dirs.add(Path(".vim/swap"))
for dir in dirs:
    (Path.home() / dir).mkdir(parents=True, exist_ok=True)
for file in files:
    home = Path.home() / file
    home.unlink(missing_ok=True)
    home.symlink_to(dot_dir / file)
