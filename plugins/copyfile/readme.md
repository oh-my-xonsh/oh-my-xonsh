# copyfile plugin

Copies the contents of a file to the system clipboard.

## Install

To use this plugin, append `copyfile` to your plugins list in your [rc.xsh] file:

```shell
omx.plugins.append("copyfile")
```

## Aliases

| Alias      | Command                   | Description                                    |
|------------|---------------------------|------------------------------------------------|
| `copyfile` | `cat args[0] \| clipcopy` | Copies the contents of a file to the clipboard |


[rc.xsh]: https://xon.sh/xonshrc.html
