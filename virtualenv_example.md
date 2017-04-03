# Using virtualenv

virtualenv is a Python package that can also help you set up virtual environment.
It is less batteries included than Conda, but it can help you pin down requirements.

It only uses pip.

## Getting Started

You'll need to install virtualenv using your favorite flavor of pip: `pip install virtualenv`

## Making a virtual environment and activating/deactivating

```bash

# Make a directory (I like env since I can .gitignore it)
mkdir env
virtualenv env/ # -p can point to any python executable you have installed
source env/bin/activate # This loads the environment variables for your venv
# You'll always have to give the path to this activate script. It's not added
# to $PATH like with anaconda
pip install pandas
deactivate # Note: No source, just deactivate
```

You can also use pip tricks here too, i.e. write a requirements.txt for your project.
If in a hurry `pip freeze > requirements.txt` will send `pip list` in the right
format to such a file.
