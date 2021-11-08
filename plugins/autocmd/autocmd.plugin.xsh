@events.on_transform_command
def autocmd(cmd):
    """Run a default auto command when no command is given"""
    if not cmd or cmd.strip() == "":
        return defaultcmd()
    return cmd

def defaultcmd():
    newcmd = "ls -GF"
    if p'$PWD/.git'.exists():
        newcmd += " && git status -s"
    return newcmd
