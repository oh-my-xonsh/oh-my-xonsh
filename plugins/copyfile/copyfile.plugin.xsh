def _copyfile(args):
    """Copy the contents of a file to the clipboard"""
    # requires clipboard plugin
    if "clipboard" not in omx_loaded_plugins:
        omx_load_plugin("clipboard")
    if not args or len(args) < 1:
        echo "What file do you want to copy?" out>err
        return 1
    elif not pf"{args[0]}".is_file():
        echo f"Invalid file: {args[0]}" out>err
        return 1
    cat args[0] | clipcopy
aliases["copyfile"] = _copyfile
