# autocmd

Run a command when none is given.

By default, this command will run `ls` and `git status` if `$PWD` is a git project. If you don't prefer this, you can redefine the `defaultcmd` function in your `.xonshrc`:

```python
def defaultcmd():
    return "command ls -laFG"
```

To use this plugin, append `autocmd` to your plugins list in your [rc.xsh] file:

```shell
omx.plugins.append("autocmd")
```

[rc.xsh]: https://xon.sh/xonshrc.html
