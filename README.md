# dotfiles

## Preinstallation

### macOS

### Linux / WSL

### Common

1\. Install zsh and oh-my-zsh, and plugins

```shell
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

2\. Install nvm

```
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

3\. Install vim-plug

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


## Installation

Do this in your home directory.

1\. Clone the repository.

```shell
git clone https://github.com/wendellhu95/dotfiles.git .dotfiles
```

2\. Link files.

```shell
ln -fs .dotfiles/.vimrc .vimrc \
	&& ln -fs .dotfiles/.zshrc .zshrc \
	&& ln -fs .dotfiles/.tmux.conf .tmux.conf
```

## Setup

1\. SSH key

```shell
ssh-keygen
```
