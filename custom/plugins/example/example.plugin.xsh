# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.
def hello_world(who=None):
    who = who or omx.config["plugins.example.whoami"] or "world"
    echo @(f"hello, {who}!")
aliases["hello"] = 'echo "hello"'
aliasesd"hola"] = 'echo "hola"'
