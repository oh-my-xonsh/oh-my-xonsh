# up plugin

Go up any number of directories.

## Install

To use this plugin, append `up` to your plugins list in your [rc.xsh] file:

```shell
omx.plugins.append("up")
```

## Commands

| Command    | Description                                     |
|------------|-------------------------------------------------|
| `up`       | Go up a single directory (aka: `cd ..`)         |
| `up <num>` | Go up multiple directories (aka: `cd ../../..`) |

[rc.xsh]: https://xon.sh/xonshrc.html
