# oh-my-xonsh

🐍 🐚 🔌 - A delightful framework to give your Python-powered, cross-platform, Unix-gazing [Xonsh][xonsh] shell a boost!

## Usage

Add the following snippet to your `~/.config/xonsh/rc.xsh`:

```shell
# set where oh-my-xonsh lives
if not 'OMX_HOME' in ${...}:
    $OMX_HOME = p"~/.config/xonsh/oh-my-xonsh"

if not $OMX_HOME.exists():
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

# initialize oh-my-xonsh
omx.init()
```

## References

Oh-My-Xonsh is inspired by many wonderful similar projects from other shells:

- [Oh My Zsh][ohmyzsh]
- [Prezto][prezto]
- [Oh My Fish][ohmyfish]
- [Oh My Bash][ohmybash]

[xonsh]: https://xon.sh
[ohmyzsh]: https://github.com/ohmyzsh/ohmyzsh
[prezto]: https://github.com/sorin-ionescu/prezto
[ohmyfish]: https://github.com/oh-my-fish/oh-my-fish
[ohmybash]: https://github.com/ohmybash/oh-my-bash
