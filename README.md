# Dotfiles
Managing dotfiles with nix and home-manager
## Configure
1. clone this repo:
```bash
mkdir -p ~/.config && cd ~/.config && \
git clone https://github.com/arifardia/dotfiles.nix.git home-manager && cd home-manager
```
2. Install nix and run the flake
```bash
make install-and-setup
```
3. Update environment
```bash
make update-environment
```
