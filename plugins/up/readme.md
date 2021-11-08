# up plugin

Go up any number of directories.

Tired of typing `cd ../../../../.........`?
What if you could just type `up` to go up a directory?
Or `up 4` and go up 4 directories?
Now you can.

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
