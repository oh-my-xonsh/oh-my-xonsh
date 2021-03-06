# gitignore plugin

This plugin lets you use [gitignore.io](https://gitignore.io) to generate your
.gitignore files.

## Install

To use this plugin, append `gitignore` to your plugins list in your [rc.xsh] file:

```shell
omx.plugins.append("gitignore")
```

## Commands

| Command            | Description                                                   |
|--------------------|---------------------------------------------------------------|
| `gi list`          | List all available .gitignore possibilities                   |
| `gi <language...>` | Display an appropriate .gitignore for the languages specified |

## Examples

If you want to make an `.gitignore` file for developing Python on a Mac, this is a good starting point:

```shell
gi python macos > .gitignore
```


[rc.xsh]: https://xon.sh/xonshrc.html
