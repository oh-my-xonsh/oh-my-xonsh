def _up(args):
    """Go up any number of directories"""
    if not args or len(args) < 1:
        args = [1]
    balloons = ('../' * int(args[0]))
    cd @(balloons)
aliases['up'] = _up
