# dotfiles 

Personal dotfiles for OSX / Debian.

## Set-up 

```bash
git clone git@github.com:kinnunenaleksi/dotfiles.git
cd dotfiles
stow nvim fish etc..

# For fresh OSX-install..
bash ~/dotfiles/config/osx_setup.sh

# For fresh Debian-install..
bash ~/dotfiles/config/debian_setup.sh

# For used Debian-systems..
bash ~/dotfiles/config/clean.sh

# Fish / Tide configuration 
tide configure
```

Later, in Neovim run `:MasonInstallAll` to install all the required LSPs.

## Dependencies 

- Neovim > 0.11

