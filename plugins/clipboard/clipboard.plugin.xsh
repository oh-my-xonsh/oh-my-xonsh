def detect_clipboard():
    """Detect the system clipboard and set the clipcopy/clippaste aliases"""
    sysname = omx.platform.lower()
    if sysname == 'darwin':
        aliases["clipcopy"] = "pbcopy"
        aliases["clippaste"] = "pbpaste"
    elif sysname == 'windows':
        aliases["clipcopy"] = "clip.exe"
        aliases["clippaste"] = "powershell.exe -noprofile -command Get-Clipboard"
    else:
        errmsg = f"detect_clipboard: Platform '{sysname}' not yet supported or clipboard utilities not found."
        echo @(errmsg) out>err
        return 1
detect_clipboard()
