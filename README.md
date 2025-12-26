LJD dotfiles
===============================================================================

My personal dotfiles. Simply symlinks the config files to the home directory.

    git clone git@github.com:lj-ditrapani/dotfiles.git
    ./dotfiles/link.py


## dev setup

- Install the python version defined in `pyproject.toml`,
  create virtual environment and
  install dependencies (one time only)
    ```commandline
    uv sync
    ```
- Activate the virtual environment (use what works for your shell)
    ```commandline
    source .venv/bin/activate
    source .venv/bin/activate.fish
    ```


## develop

- Typecheck with MyPy!
    ```commandline
    mypy --strict link.py
    ```
- Format src with ruff!
    ```commandline
    ruff format
    ```
