# common-aliases plugin

The plugin provides some common helpful aliases.

## Install

To use this plugin, append `common-aliases` to your plugins list in your [rc.xsh] file:

```shell
omx.plugins.append("common-aliases")
```

## Aliases

| Alias       | Command                                                      | Description                                               |
|-------------|--------------------------------------------------------------|-----------------------------------------------------------|
| `_`         | `sudo`                                                       | Single char alias for sudo                                |
| `c`         | `clear`                                                      | Single char alias for clear                               |
| `d`         | `dirs -v \| head -10`                                        | Single char alias for dirs                                |
| `grep`      | `grep --color=auto --exclude-dir="{.bzr,CVS,.git,.hg,.svn}"` | Grep with colors and excluding VCS dirs                   |
| `h`         | `history`                                                    | Single char alias                                         |
| `l`         | `ls -lFh`                                                    | List by: size, show type, human readable                  |
| `la`        | `ls -lAFh`                                                   | Long list, show almost all, show type, human readable     |
| `ldot`      | `ls -ld .*`                                                  | List hidden dot files                                     |
| `ll`        | `ls -l`                                                      | Long list                                                 |
| `lr`        | `ls -tRFh`                                                   | List sorted by date, recursive, show type, human readable |
| `lt`        | `ls -ltFh`                                                   | Long list, sorted by date, show type, human readable      |
| `p`         | `ps -f`                                                      | Single char alias for ps                                  |
| `v`         | `vim`                                                        | Single char alias for vim                                 |
| `tarls`     | tar -tvf                                                     | List contents of tar file                                 |
| `untar`     | tar -xf                                                      | Un-tar a file                                             |
| `speedtest` | wget -O /dev/null http://speed.transip.nl/10mb.bin           | Simple `wget` based internet speed test                   |
| `dud`       | du -d 1 -h                                                   | List directory sizes                                      |
| `fd`        | find . -type d -name                                         | Find a directory                                          |
| `ff`        | find . -type f -name                                         | Find a file                                               |


[rc.xsh]: https://xon.sh/xonshrc.html
