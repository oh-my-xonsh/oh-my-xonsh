try:
    len(plugins)
except:
    plugins = []

if not 'XSH' in ${...}:
    $XSH = pf"{__file__}".parent.resolve()

if not 'XSH_CUSTOM' in ${...}:
    $XSH_CUSTOM = $XSH / "custom"

for plugin in plugins:
    found = False
    for plugindir in ($XSH_CUSTOM, $XSH):
        initfile = fp"{plugindir}/plugins/{plugin}/{plugin}.plugin.xsh"
        if initfile.exists():
            found = True
            break
    if not found:
        print(f"Cannot find plugin: {plugin}")
