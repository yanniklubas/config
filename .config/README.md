# Configuration Files

## Install config files on a new system

Avoid recursive tracking issues by ignore
```bash
echo ".cfg" >> ~/.gitignore
```

Set the file as a global `.gitignore` file

```bash
git config --global core.excludesfile ~/.gitignore
```

Clone the repository

```bash
git clone https://github.com/yanniklubas/config.git ${HOME}/.cfg
```

Add the following alias

```bash
alias gcfg='/usr/bin/git --git-dir=${HOME}/.cfg work-tree=${HOME}'
```

Ignore untracked files

```bash
gcfg config --local status.showUntrackedFiles no
```

Checkout the actual contents

```bash
gcfg checkout
```
