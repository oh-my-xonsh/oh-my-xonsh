# IWD

In a similar vein to $PWD, this plugin stores your initial working directory (iwd) in $IWD.
This allows rapid switching back to wherever you started from.

To use it, add `iwd` to the plugins list in your rc.xsh file:

```shell
plugins = [..., "iwd"]
```

## Features

| Alias   | Command     | Description                             |
|---------|-------------|-----------------------------------------|
| `iwd`   | `echo $IWD` | Print the initial working directory     |
| `cdiwd` | `cd $IWD`   | Change to the initial working directory |
