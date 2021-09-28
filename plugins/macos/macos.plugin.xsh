# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/osx/osx.plugin.zsh
# https://github.com/sorin-ionescu/prezto/tree/master/modules/osx

def _manp(args):
    """Open man page using Preview.app"""
    if not args or len(args) < 1:
        echo "What manual page do you want?" out>err
        return 1
    for page in args:
        man -t @(page) | open -f -a Preview
aliases['manp'] = _manp

def _pfd(args):
    """Show the current directory in Finder.app"""
    script = '''tell application "Finder"
                    return POSIX path of (target of first window as text)
                end tell'''
    echo @(script) | osascript err>/dev/null
aliases['pfd'] = _pfd

def _pfs(args):
    """Show the current selection in Finder.app"""
    script = '''tell application "Finder" to set the_selection to selection
                if the_selection is not {}
                  repeat with an_item in the_selection
                    log POSIX path of (an_item as text)
                  end repeat
                end if'''
    echo @(script) | osascript err>out
aliases['pfs'] = _pfs
