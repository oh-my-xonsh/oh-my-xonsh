if omx.platform.lower() == 'darwin':
    aliases["grep"] = 'grep --color=auto --exclude-dir="{.bzr,CVS,.git,.hg,.svn}"'
