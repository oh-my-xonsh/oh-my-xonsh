from collections import OrderedDict
from datetime import datetime

# see if the plugins list exists
try:
    len(plugins)
except:
    plugins = []

# see if the omx_config dict exists
try:
    len(omx_config)
except:
    omx_config = {}

# define XSH environment
if not 'XSH' in ${...}:
    $XSH = pf"{__file__}".parent.resolve()

if not 'XSH_CUSTOM' in ${...}:
    $XSH_CUSTOM = $XSH / "custom"

# store info about plugins we load
omx_loaded_plugins = OrderedDict()

# define functions
def omx_load_plugin(plugin):
    """Load an Oh-My-Xonsh plugin"""
    if plugin in omx_loaded_plugins:
        return False

    for plugindir in ($XSH_CUSTOM, $XSH):
        initfile = fp"{plugindir}/plugins/{plugin}/{plugin}.plugin.xsh"
        if initfile.exists():
            source @(initfile)
            omx_loaded_plugins[plugin] = datetime.now().isoformat()
            return True
    if not found:
        echo @(f"Cannot find plugin: {plugin}") out>err
        return False

# load plugins
for plugin in plugins:
    omx_load_plugin(plugin)

# load additional config files
for config_file in gp`$XSH_CUSTOM/*.xsh`:
    source @(config_file)
