# define XSH environment
if not 'OMX_HOME' in ${...}:
    $OMX_HOME = pf"{__file__}".parent.resolve()

if not 'OMX_CUSTOM_HOME' in ${...}:
    $OMX_CUSTOM_HOME = $OMX_HOME / "custom"

class OhMyXonsh():
    """Object to hold the Oh-My-Xonsh functionality"""
    def __init__(self):
        """class initializer"""
        from collections import OrderedDict
        import platform
        self.plugins = []
        self.loaded_plugins = OrderedDict()
        self.config = {}
        self.platform = platform.system()

    def list_plugins(self):
        """List Oh-My-Xonsh plugins"""
        print("--- OMX plugins ---")
        for fp in gp`$OMX_HOME/plugins/*/`:
            print(fp.name)
        print("--- OMX custom plugins ---")
        for fp in gp`$OMX_CUSTOM_HOME/plugins/*/`:
            print(fp.name)

    def load_plugin(self, plugin, force=False):
        """Load an Oh-My-Xonsh plugin"""
        from datetime import datetime
        if plugin in self.loaded_plugins and not force:
            return False

        for plugindir in ($OMX_CUSTOM_HOME, $OMX_HOME):
            initfile = fp"{plugindir}/plugins/{plugin}/{plugin}.plugin.xsh"
            if initfile.exists():
                cmdresult = !(source @(initfile))
                if cmdresult.returncode != 0:
                    echo @(f"plugin failed to load properly: {plugin}") out>err
                self.loaded_plugins[plugin] = cmdresult
                return True
        if not found:
            echo @(f"Cannot find plugin: {plugin}") out>err
            return False

    def init(self):
        """Initialize the Oh-My-Xonsh plugins and scripts"""
        # load plugins
        for plugin in self.plugins:
            self.load_plugin(plugin)

        # load additional config files
        for config_file in gp`$OMX_CUSTOM_HOME/*.xsh`:
            source @(config_file)

omx = OhMyXonsh()
