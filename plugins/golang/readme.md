# golang plugin

This plugin adds some useful aliases for [Go](https://golang.org).

## Install

To use this plugin, append `golang` to your plugins list in your [rc.xsh] file:

```shell
omx.plugins.append("golang")
```

## Aliases

| Alias   | Command        | Description                  |
|---------|----------------|------------------------------|
| `hello` | `echo "hello"` | Just a simple greeting       |
| `hola`  | `echo "hola"`  | A simple greeting en Español |

## Functions

| Function      | Description                    |
|---------------|--------------------------------|
| `hello_world` | A simple greeting to the world |


[rc.xsh]: https://xon.sh/xonshrc.html
