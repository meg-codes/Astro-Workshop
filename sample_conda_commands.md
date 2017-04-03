# Using Conda

For these commands to work, you'll need to install either [Anaconda or Miniconda](https://conda.io/docs/installation.html)

The functionality is the same, but Anaconda comes with a large set of pre-installed
packages.

This is mostly for a local system. On the Princeton University clusters, you can access
anaconda for either python by running

```bash
module load anaconda # For python 2.7
module load anaconda3 # For python 3
```

You can then create conda environments or just install packages using
`pip install --user packagename`

**Once installed, the version of Anaconda you install will be the default Python
on your system.**

(But you can comment out its line in .profile, .bashrc or .bash_profile.)

## Make a new virtual environment
```bash
conda create --name testenv -c astropy ginga
# astropy = anaconda.org channel to add to default list
# ginga = package
```

## Activate an environment
```bash
source activate testenv
```

## Deactivate an environment
```bash
source deactivate testenv
```

## Add a new package to an existing environment
```bash
conda install -n testenv pandas
```

## Using .condarc for further tricks
```bash
# Creates a .condarc in your $HOME and adds a channel
conda config --add channels astropy
cat ~/.condarc # Should write the file to your
               # terminal window
# .condarc files are valid YAML               
```

More resources on [.condarc files](https://conda.io/docs/config.html#the-conda-configuration-file-condarc)

## Bonus Round
### Load a conda environment and use pip
```bash
source activate testenv
pip install django
```

Conda by default installs pip and manages any pip installs (`conda list` when an env is loaded.)
