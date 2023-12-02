LJD dotfiles
===============================================================================

My personal dotfiles.  Simply simlinks the config files to the home directory.

    git clone git@github.com:lj-ditrapani/dotfiles.git
    ./dotfiles/link.py


## dev setup

- Make sure pyenv is initialized.  You may already have this is your bashrc.
    ```commandline
    eval "$(pyenv init -)"
    ```
- install the python version defined in `.python-version` (one time only)
    ```commandline
    pyenv install
    ```
- create a new python virtual environment (one time only)
    ```commandline
    python -m venv env
    ```
- activate the virtual environment
    ```commandline
    source env/bin/activate
    ```
- install dev requirements
    ```commandline
    pip install -r dev-requirements.txt
    ```


## develop

- typecheck with MyPy!
    ```commandline
    mypy --strict link.py
    ```
- format src with black!
    ```commandline
    black link.py
    ```
