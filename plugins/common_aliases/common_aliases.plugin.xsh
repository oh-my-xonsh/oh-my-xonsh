if omx.platform.lower() == 'darwin':
    aliases["grep"] = 'grep --color=auto --exclude-dir="{.bzr,CVS,.git,.hg,.svn}"'

# ls aliases
aliases['la'] = 'ls -lAFh'     # long list, show almost all, show type, human readable
aliases['lr'] = 'ls -tRFh'     # sorted by date, recursive, show type, human readable
aliases['lt'] = 'ls -ltFh'     # long list, sorted by date, show type, human readable
aliases['ll'] = 'ls -l'        # long list
aliases['ldot'] = 'ls -ld .*'  # list hidden dot files

# tar can be... difficult
aliases['tarls'] = "tar -tvf"
aliases['untar'] = "tar -xf"

# networking
aliases['speedtest'] = "wget -O /dev/null http://speed.transip.nl/10mb.bin"

aliases['dud'] = 'du -d 1 -h'
# todo: track down why this doesn't work
#aliases['duf'] = 'du -sh *'
aliases['fd'] = 'find . -type d -name'  # find dir
aliases['ff'] = 'find . -type f -name'  # find file
