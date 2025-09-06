# First Step

Create a .zsh_aliases file

```bash
touch ~/.zsh_aliases
```

Then open .zshrc file

```bash
nano ~/.zshrc
```

Add the following to .zshrc file

```bash
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi
```

Reload zsh terminal

```bash
source ~/.zshrc
```

Add the following aliases in .zsh_aliases file

### Ubuntu

```bash
# ubuntu
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
```

### Python

```bash
# python
alias python="python3"
```

### Git

```bash
# git
alias status="git status"
alias add="git add"
alias commit="git commit"
alias push="git push"
alias pull="git pull"
alias checkout="git checkout"
alias clone="git clone"
```

### Node

```bash
# node
alias start="yarn start"
alias dev="yarn dev"
alias build="yarn build"
```
