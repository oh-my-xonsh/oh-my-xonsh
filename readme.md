# oh-my-xonsh

🐍 🐚 🔌 - A delightful framework to give your Python-powered, cross-platform, Unix-gazing [Xonsh][xonsh] shell a boost!

## Usage

Add the following snippet to your `~/.config/xonsh/rc.xsh` or `~/.xonshrc`:

```shell
# set where oh-my-xonsh lives
if not 'OMX_HOME' in ${...}:
    $OMX_HOME = p"~/.config/xonsh/oh-my-xonsh"

# clone omx if needed
if not pf"{$OMX_HOME}".exists():
    git clone --depth=1 https://github.com/oh-my-xonsh/oh-my-xonsh $OMX_HOME

# source oh-my-xonsh to give you the `omx` object
source $OMX_HOME/oh-my-xonsh.xsh

# choose your plugins
omx.plugins = [
    'autocmd',
    'brew',
    'clipboard',
    'common_aliases',
    'copydir',
    'dash',
    'git',
    'gitignore',
    'golang',
    'iwd',
    'macos',
    'manpage_coloring',
    'shrink_path',
    'up',
]

# configure your plugins
# omx.config["plugins.git.skip_aliases"] = True

# initialize oh-my-xonsh
omx.init()
```

## Configuration

Some plugins allow for configuration options. The `omx` object has a `.config` property that allows you to set config values.

You need to be sure you set these values before calling `omx.init()` in your [rc.xsh] file.

For example:

```shell
# set your config options
omx.config["plugins.example.whoami"] = "I'm Batman!"
omx.config["plugins.git.skip_aliases"] = True

# now call init
omx.init()
```

## Adding your own custom plugins

You can add your own custom `.xsh` files or plugins to OMX by using the `$OMX_CUSTOM_HOME` directory.
You can set `$OMX_CUSTOM_HOME` to whatever you want, or you can use the OMX default. An example is
included to help you get started.

## The `omx` object

Sourcing Oh-My-Xonsh gives you the `omx` object, which allows you to do lots of great things, such as:

### List available plugins

```shell
$ omx.list_plugins()
--- OMX plugins ---
autocmd
brew
cdls
clipboard
common_aliases
copydir
copyfile
dash
git
gitignore
golang
iwd
jupyter
macos
manpage_coloring
shrink_path
up
--- OMX custom plugins ---
example
```

## Loaded plugins

You can see the `CommandPipeline` details about the plugins you've loaded, including the load times for each plugin.

```shell
$ omx.loaded_plugins
```

### Updating OMX

OMX can update itself if you want as well (which is simply doing a `git pull`).

```shell
$ omx.update()
```

## References

Oh-My-Xonsh is inspired by many wonderful similar projects from other shells:

- [Oh My Zsh][ohmyzsh]
- [Prezto][prezto]
- [Oh My Fish][ohmyfish]
- [Oh My Bash][ohmybash]

[xonsh]: https://xon.sh
[rc.xsh]: https://xon.sh/xonshrc.html
[ohmyzsh]: https://github.com/ohmyzsh/ohmyzsh
[prezto]: https://github.com/sorin-ionescu/prezto
[ohmyfish]: https://github.com/oh-my-fish/oh-my-fish
[ohmybash]: https://github.com/ohmybash/oh-my-bash
