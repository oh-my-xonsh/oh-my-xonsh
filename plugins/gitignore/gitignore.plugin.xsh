def _gi(args):
    if not args or len(args) < 1:
        echo "What .gitignore types do you want?" out>err
        return 1
    elif args[0] == "list":
        curl -sfL https://www.gitignore.io/api/list | tr "," "\n"
        echo ""
    else:
        ignorables = ",".join(args)
        curl -fLw '\n' https://www.gitignore.io/api/@(ignorables)
aliases['gi'] = _gi
