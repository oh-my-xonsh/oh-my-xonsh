# macos plugin

The plugin provides some useful features for users of Apple's MacOS.

## Install

To use this plugin, append `macos` to your plugins list in your [rc.xsh] file:

```shell
plugins.append("macos")
```

## Commands

| Commands | Description                              |
|----------|------------------------------------------|
| `manp`   | Open man page using Preview.app          |
| `mand`   | Open man page using Dash.app             |
| `pfd`    | Show the current directory in Finder.app |
| `pfs`    | Show the current selection in Finder.app |

[rc.xsh]: https://xon.sh/xonshrc.html
