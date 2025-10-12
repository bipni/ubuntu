# Install `zsh` Terminal

## Method 1: Raw Install

### Step 1: Install `zsh`

```bash
sudo apt update
sudo apt install -y zsh
```

Check if `zsh` installed correctly.

```bash
zsh --version
```

### Step 2: Set `zsh` as your default shell

```bash
chsh -s $(which zsh)
exec zsh
```

For VM:

```bash
sudo chsh -s $(which zsh) $USER
exec zsh
```

### Step 3: Install Oh My Zsh

Oh My Zsh manages plugins, themes, and configuration nicely.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

When prompted to switch to`zsh` - choose Yes.

### Step 4: Install `zsh-autosuggestions` and `zsh-syntax-highlighting` plugin

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Then open your `zsh` config:

```bash
nano ~/.zshrc
```

Find the line starting with:

```bash
plugins=(git)
```

Change it to:

```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

Save and exit (Ctrl+O, Enter, Ctrl+X).

Reload your shell:

```bash
source ~/.zshrc
```

### Step 5: Choose a better theme (Optional)

Clone your preferred theme.

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

Edit .zshrc:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Then reload and follow on-screen configuration:

```bash
source ~/.zshrc
```

## Method 2: Pre-defined Theme Profile Install

### Clone the git repository

```bash
git clone https://github.com/pixegami/terminal-profile.git
```

### Update the apt repository

```bash
sudo apt update
```

### Change directory to git repo

```bash
cd directory-path/terminal-profile
```

### Run the following commands

```bash
./install_powerline.sh

./install_terminal.sh

./install_profile.sh
```
