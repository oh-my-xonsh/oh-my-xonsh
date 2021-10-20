@events.on_chdir
def cdls(olddir, newdir, **kw):
    command ls -GF
