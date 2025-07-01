# Project Setup Guide

This project uses a Python virtual environment to manage dependencies. Follow the steps below to set up your development environment.

## Prerequisites

- Python 3.7 or higher
- pip (usually comes with Python)
- make (available on most Unix-like systems)

## Quick Start

```bash
# Complete setup (recommended for first-time setup)
make install

# Activate the virtual environment manually
source .venv/bin/activate
```

## Available Make Commands

### `make activate`
Creates a Python virtual environment in the `.venv` directory if it doesn't already exist.

**What it does:**
- Creates `.venv/` directory with a fresh Python virtual environment
- Displays instructions for manual activation

### `make build-env`
Installs project dependencies from `requirements.txt` into the virtual environment.

**What it does:**
- Automatically calls `make activate` first
- Upgrades pip to the latest version
- Installs all packages listed in `requirements.txt`

### `make install`
Complete environment setup - combines `activate` and `build-env`.

**What it does:**
- Creates virtual environment
- Installs all dependencies
- Recommended for initial project setup

### Other Commands

- `make clean` - Removes the entire `.venv` directory
- `make help` - Shows all available commands

## Manual Virtual Environment Usage

After running `make activate` or `make install`, you can manually activate/deactivate the environment:

```bash
# Activate virtual environment
source .venv/bin/activate

# Your prompt should change to show (.venv)
# Install packages, run Python scripts, etc.

# Deactivate when done
deactivate
```

## Adding Dependencies

1. Activate your virtual environment: `source .venv/bin/activate`
2. Install new packages: `pip install package-name`
3. Update requirements: `pip freeze > requirements.txt`
4. Commit the updated `requirements.txt` to version control

## Troubleshooting

**Virtual environment not activating:**
- Ensure you're running `source .venv/bin/activate` (note the `source` command)
- Check that Python 3 is installed: `python3 --version`

**Dependencies not installing:**
- Ensure `requirements.txt` exists in the project root
- Try upgrading pip: `.venv/bin/pip install --upgrade pip`

**Make command not found:**
- On Windows, consider using Git Bash or WSL
- Alternatively, run the commands manually as shown in the Makefile

## Contributing
Currently, I would strongly discourage committing changes to this repository. Please
feel free to use and work within the notebooks as you wish. However, Jupyter Notebooks,
are notoriusly bad with git MRs. I can implement a better management tool to turn the 
Notebooks into Markdown and back later. For now, please simply use the notebooks, but
do not commit any changes back to this repo. Juypter Lab is build into the requirements.txt
so if you simply run from the root of the project you should be able to interact with, change,
and run the notebooks once you have configured your .venv based on the Make commands above.
```
jupyter lab
```
