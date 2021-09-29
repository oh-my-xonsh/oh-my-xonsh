# oh-my-xonsh

🐍 🐚 🔌 - A delightful framework to give your Python-powered, cross-platform, Unix-gazing [Xonsh][xonsh] shell a boost!

## Usage

Add the following snippet to your `~/.config/xonsh/rc.xsh`:

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
    'brew',
    'cdls',
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
