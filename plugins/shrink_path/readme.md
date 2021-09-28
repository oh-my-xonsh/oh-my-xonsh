# shrink_path

Shrink a path string, similar to what [Fish][fish] does with paths in its prompts.

Note that the leading dot on hidden dirs does not count towards the shrink size.

Example:

```shell
$ mypath = p"/Users/snail/.config/xonsh/oh-my-xonsh"
$ shrink_path(mypath)
'~/.c/x/oh-my-xonsh'
$ shrink_path(mypath, 3)
'~/.con/xon/oh-my-xonsh'
```

[fish]: https://fishshell.com
