# copydir plugin

Copies the path of your current folder to the system clipboard.

## Install

To use this plugin, append `copydir` to your plugins list in your [rc.xsh] file:

```shell
plugins.append("copydir")
```

## Aliases

| Alias     | Command                    | Description                         |
|-----------|----------------------------|-------------------------------------|
| `copydir` | `echo -n $PWD \| clipcopy` | Copies your `$PWD` to the clipboard |


[rc.xsh]: https://xon.sh/xonshrc.html
