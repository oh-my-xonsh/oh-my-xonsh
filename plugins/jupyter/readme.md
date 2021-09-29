# jupyter plugin

The plugin is not real. It's just an jupyter.

## Install

To use this plugin, append `jupyter` to your plugins list in your [rc.xsh] file:

```shell
# add `jupyter` to your plugins list:
omx.plugins = [
    "...",
    "jupyter",
    "...",
]

# -or- tack this plugin onto the end of the list
omx.plugins.append("jupyter")
```

## Aliases

| Alias  | Command            | Description           |
|--------|--------------------|-----------------------|
| `juno` | `jupyter notebook` | Open Jupyter Notebook |
| `jula` | `jupyter lab`      | Open Jupyter Lab      |


[rc.xsh]: https://xon.sh/xonshrc.html
