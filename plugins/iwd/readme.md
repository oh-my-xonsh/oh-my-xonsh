# IWD

In a similar vein to $PWD, this plugin stores your initial working directory (iwd) in $IWD.
This allows rapid switching back to wherever you started from.

## Install

To use this plugin, append `iwd` to your plugins list in your [rc.xsh] file:

```shell
plugins.append("iwd")
```

## Features

| Alias   | Command     | Description                             |
|---------|-------------|-----------------------------------------|
| `iwd`   | `echo $IWD` | Print the initial working directory     |
| `cdiwd` | `cd $IWD`   | Change to the initial working directory |


[rc.xsh]: https://xon.sh/xonshrc.html
