## Dependencies
`stow` - to manage symlinking\
`git`  - to clone and manage this repo
```
sudo pacman -S stow git
```
## Installation
```
git clone https://github.com/probablyalright/dotfiles ~/.dotfiles && cd ~/.dotfiles &&
stow .
```
1. Clone dotfiles repo to ~/.dotfiles
2. Change working directory to ~/.dotfiles
3. Execute stow to symlink config files
