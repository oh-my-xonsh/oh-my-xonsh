@events.on_chdir
def cdls(olddir, newdir, **kw):
    if omx.platform.lower() == 'darwin':
        command ls -GF
    else:
        command ls
