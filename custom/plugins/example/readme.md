# example plugin

The plugin is not real. It's just an example.

## Install

To use this plugin, append `example` to your plugins list in your [rc.xsh] file:

```shell
# add `example` to your plugins list:
omx.plugins = [
    "...",
    "example",
    "...",
]

# -or- tack this plugin onto the end of the list
omx.plugins.append("example")
```

## Commands

| Command | Description |
|---------|-------------|
| `doit`  | Do a thing  |

## Aliases

| Alias   | Command        | Description                  |
|---------|----------------|------------------------------|
| `hello` | `echo "hello"` | Just a simple greeting       |
| `hola`  | `echo "hola"`  | A simple greeting en Español |

## Functions

| Function      | Description                    |
|---------------|--------------------------------|
| `hello_world` | A simple greeting to the world |

## Config Options

| Config                                 | Type | Description                    |
|----------------------------------------|------|--------------------------------|
| `omx.config["plugins.example.whoami"]` | str  | Who are you saying "hello" to? |

Example:

```shell
omx.config["plugins.example.whoami"] = "I'm Batman"
omx.init()
```

[rc.xsh]: https://xon.sh/xonshrc.html
