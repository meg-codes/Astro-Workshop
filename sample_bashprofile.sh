export PS1='\u \w \$ '

# MacPorts Installer addition on 2016-07-29_at_16:06:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin/:$PATH"

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#Aliases
alias nano4='nano --tabstospaces'
alias vi='vim'
alias djangoserv='python manage.py runserver'
alias venv='source env/bin/activate'

# Ignore spaces and dupes in command history
HISTCONTROL=ignoreboth

# added by Miniconda3 4.3.11 installer
# export PATH="/Users/benjaminhicks/miniconda3/bin:$PATH"
# (In my example, I don't want this all the time)
