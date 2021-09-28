def _mand(args):
    """Open man page using Dash.app"""
    if not args or len(args) < 1:
        echo "What manual page do you want?" out>err
        return 1
    if !(open f"dash://manpages%3A{args[0]}" err> /dev/null).returncode != 0:
        echo "Dash.app is not installed" out>err
aliases['mand'] = _mand
