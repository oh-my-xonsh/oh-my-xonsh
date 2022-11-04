# functions
def _git_find_branch(*branches):
    """Return the name of the first git branch found from the provided arg list"""
    if !(git rev-parse --git-dir all>/dev/null).returncode != 0:
        return
    for branch in branches:
        if !(git show-ref -q --verify refs/heads/@(branch)).returncode == 0:
            return branch


def _git_main_branch(default="main"):
    """Return the name of the 'main' git branch"""
    result = _git_find_branch("main", "master", "trunk")
    return result or "main"


def _git_develop_branch(default="develop"):
    """Return the name of the 'dev' git branch"""
    result = _git_find_branch("develop", "dev", "devel", "development")
    return result or "develop"


def _git_current_branch():
    """Return the current branch in the git repo"""
    result = $(git branch --show-current).strip()
    return result


def _current_branch():
    return _git_current_branch()


def _git_log_prettily(args):
    """Run `git log --pretty` with whatever pretty arg string provided"""
    if args and len(args) > 0:
        git log --pretty=@(args[0])


def _work_in_progress():
    """Warn if the current branch is a WIP"""
    if !(git --no-pager -c log.showSignature=false log -n 1 2>/dev/null | grep -q -- "--wip--").returncode == 0:
        print("WIP!")


def _gccd():
    """Not implemented"""
    raise NotImplementedError()


def _gdnolock(args):
    git diff @(args[0]) ":(exclude)package-lock.json" ":(exclude)*.lock"


def _gdv(args):
    git diff -w @(args[0]) | view -


def _ggf():
    branch = _git_current_branch()
    git push --force origin @(branch)


def _ggfl():
    branch = _git_current_branch()
    git push --force-with-lease origin @(branch)


def _ggl():
    branch = _git_current_branch()
    git pull origin @(branch)


def _ggp():
    branch = _git_current_branch()
    git push origin @(branch)


def _ggpnp():
    _ggl()
    _ggp()


def _ggu():
    branch = _git_current_branch()
    git pull --rebase origin @(branch)


def _grename(args):
    if len(args) != 2:
        raise RuntimeError("Usage: grename old_branch new_branch")
    old_branch, new_branch = args
    git branch -m @(old_branch) @(new_branch)
    git push origin @(old_branch)
    git push --set-upstream origin @(new_branch)


#
# Aliases for functions
#
aliases["git_current_branch"] = _git_current_branch
aliases["current_branch"] = _current_branch
aliases["git_find_branch"] = _git_find_branch
aliases["git_main_branch"] = _git_main_branch
aliases["git_develop_branch"] = _git_develop_branch
aliases["git_log_prettily"] = _git_log_prettily
aliases["work_in_progress"] = _work_in_progress
aliases["gccd"] = _gccd
aliases["gdnolock"] = _gdnolock
aliases["gdv"] = _gdv
aliases["ggf"] = _ggf
aliases["ggfl"] = _ggfl
aliases["ggl"] = _ggl
aliases["ggp"] = _ggp
aliases["ggpnp"] = _ggpnp
aliases["ggu"] = _ggu
aliases["grename"] = _grename


#
# Aliases
# (sorted alphabetically)
#
omx_git_aliases = {
    "g": 'git',
    "ga": 'git add',
    "gaa": 'git add --all',
    "gapa": 'git add --patch',
    "gau": 'git add --update',
    "gav": 'git add --verbose',
    "gap": 'git apply',
    "gapt": 'git apply --3way',
    "gb": 'git branch',
    "gba": 'git branch -a',
    "gbd": 'git branch -d',
#    "gbda": 'git branch --no-color --merged | command grep -vE "^([+*]|\s*($(git_main_branch)|$(git_develop_branch))\s*$)" | command xargs git branch -d 2>/dev/null',
    "gbD": 'git branch -D',
    "gbl": 'git blame -b -w',
    "gbnm": 'git branch --no-merged',
    "gbr": 'git branch --remote',
    "gbs": 'git bisect',
    "gbsb": 'git bisect bad',
    "gbsg": 'git bisect good',
    "gbsr": 'git bisect reset',
    "gbss": 'git bisect start',
    "gc": 'git commit -v',
    "gc!": 'git commit -v --amend',
    "gcn!": 'git commit -v --no-edit --amend',
    "gca": 'git commit -v -a',
    "gca!": 'git commit -v -a --amend',
    "gcan!": 'git commit -v -a --no-edit --amend',
    "gcans!": 'git commit -v -a -s --no-edit --amend',
    "gcam": 'git commit -a -m',
    "gcsm": 'git commit -s -m',
    "gcas": 'git commit -a -s',
    "gcasm": 'git commit -a -s -m',
    "gcb": 'git checkout -b',
    "gcf": 'git config --list',
    "gcl": 'git clone --recurse-submodules',
    "gclean": 'git clean -id',
    "gpristine": 'git reset --hard && git clean -dffx',
    "gcm": 'git checkout $(git_main_branch)',
    "gcd": 'git checkout $(git_develop_branch)',
    "gcmsg": 'git commit -m',
    "gco": 'git checkout',
    "gcor": 'git checkout --recurse-submodules',
    "gcount": 'git shortlog -sn',
    "gcp": 'git cherry-pick',
    "gcpa": 'git cherry-pick --abort',
    "gcpc": 'git cherry-pick --continue',
    "gcs": 'git commit -S',
    "gcss": 'git commit -S -s',
    "gcssm": 'git commit -S -s -m',
    "gd": 'git diff',
    "gdca": 'git diff --cached',
    "gdcw": 'git diff --cached --word-diff',
    "gdct": 'git describe --tags $(git rev-list --tags --max-"count": 1)',
    "gds": 'git diff --staged',
    "gdt": 'git diff-tree --no-commit-id --name-only -r',
    "gdup": 'git diff "@{upstream}"',
    "gdw": 'git diff --word-diff',
    "gf": 'git fetch',
    "gfa": 'git fetch --all --prune --"jobs": 10',
    "gfo": 'git fetch origin',
    "gfg": 'git ls-files | grep',
    "gg": 'git gui citool',
    "gga": 'git gui citool --amend',
    "ggpur": 'ggu',
    "ggpull": 'git pull origin "$(git_current_branch)"',
    "ggpush": 'git push origin "$(git_current_branch)"',
    "ggsup": 'git branch --set-upstream-"to": origin/$(git_current_branch)',
    "gpsup": 'git push --set-upstream origin $(git_current_branch)',
    "ghh": 'git help',
    "gignore": 'git update-index --assume-unchanged',
    "gignored": 'git ls-files -v | grep "^[[:lower:]]"',
    "git-svn-dcommit-push": 'git svn dcommit && git push github $(git_main_branch):svntrunk',
    # "gk": '\gitk --all --branches &!',
    # "gke": '\gitk --all $(git log -g --"pretty": %h) &!',
    "gl": 'git pull',
    "glg": 'git log --stat',
    "glgp": 'git log --stat -p',
    "glgg": 'git log --graph',
    "glgga": 'git log --graph --decorate --all',
    "glgm": 'git log --graph --max-"count": 10',
    "glo": 'git log --oneline --decorate',
    "glol": "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'",
    "glols": "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat",
    "glod": "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'",
    "glods": "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short",
    "glola": "git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all",
    "glog": 'git log --oneline --decorate --graph',
    "gloga": 'git log --oneline --decorate --graph --all',
    "glp": "_git_log_prettily",
    "gm": 'git merge',
    "gmom": 'git merge origin/$(git_main_branch)',
    "gmtl": 'git mergetool --no-prompt',
    "gmtlvim": 'git mergetool --no-prompt --"tool": vimdiff',
    "gmum": 'git merge upstream/$(git_main_branch)',
    "gma": 'git merge --abort',
    "gp": 'git push',
    "gpd": 'git push --dry-run',
    "gpf": 'git push --force-with-lease',
    "gpf!": 'git push --force',
    "gpoat": 'git push origin --all && git push origin --tags',
    "gpr": 'git pull --rebase',
    "gpu": 'git push upstream',
    "gpv": 'git push -v',
    "gr": 'git remote',
    "gra": 'git remote add',
    "grb": 'git rebase',
    "grba": 'git rebase --abort',
    "grbc": 'git rebase --continue',
    "grbd": 'git rebase $(git_develop_branch)',
    "grbi": 'git rebase -i',
    "grbm": 'git rebase $(git_main_branch)',
    "grbom": 'git rebase origin/$(git_main_branch)',
    "grbo": 'git rebase --onto',
    "grbs": 'git rebase --skip',
    "grev": 'git revert',
    "grh": 'git reset',
    "grhh": 'git reset --hard',
    "groh": 'git reset origin/$(git_current_branch) --hard',
    "grm": 'git rm',
    "grmc": 'git rm --cached',
    "grmv": 'git remote rename',
    "grrm": 'git remote remove',
    "grs": 'git restore',
    "grset": 'git remote set-url',
    "grss": 'git restore --source',
    "grst": 'git restore --staged',
    "grt": 'cd "$(git rev-parse --show-toplevel || echo .)"',
    "gru": 'git reset --',
    "grup": 'git remote update',
    "grv": 'git remote -v',
    "gsb": 'git status -sb',
    "gsd": 'git svn dcommit',
    "gsh": 'git show',
    "gsi": 'git submodule init',
    "gsps": 'git show --"pretty": short --show-signature',
    "gsr": 'git svn rebase',
    "gss": 'git status -s',
    "gst": 'git status',
    "gsta": 'git stash push',
    "gstaa": 'git stash apply',
    "gstc": 'git stash clear',
    "gstd": 'git stash drop',
    "gstl": 'git stash list',
    "gstp": 'git stash pop',
    "gsts": 'git stash show --text',
    "gstu": 'gsta --include-untracked',
    "gstall": 'git stash --all',
    "gsu": 'git submodule update',
    "gsw": 'git switch',
    "gswc": 'git switch -c',
    "gswm": 'git switch $(git_main_branch)',
    "gswd": 'git switch $(git_develop_branch)',
    "gts": 'git tag -s',
    "gtv": 'git tag | sort -V',
    # "gtl": 'gtl(){ git tag --"sort": -v:refname -n -l "${1}*" }; noglob gtl',
    "gunignore": 'git update-index --no-assume-unchanged',
    # "gunwip": 'git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1',
    "gup": 'git pull --rebase',
    "gupv": 'git pull --rebase -v',
    "gupa": 'git pull --rebase --autostash',
    "gupav": 'git pull --rebase --autostash -v',
    "gupom": 'git pull --rebase origin $(git_main_branch)',
    "gupomi": 'git pull --"rebase": interactive origin $(git_main_branch)',
    "glum": 'git pull upstream $(git_main_branch)',
    "gwch": 'git whatchanged -p --abbrev-commit --"pretty": medium',
    "gwip": 'git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"',
    "gam": 'git am',
    "gamc": 'git am --continue',
    "gams": 'git am --skip',
    "gama": 'git am --abort',
    "gamscp": 'git am --show-current-patch',
}
if not omx.config["plugins.git.skip_aliases"]:
    aliases.update(omx_git_aliases)
