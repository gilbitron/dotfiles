# .dotfiles

The `install.sh` script will symlink any .dotfiles in this folder to the HOME directory.

```
git clone https://github.com/gilbitron/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

To configure Git to use the `.gitignore_global` run:

```
git config --global core.excludesfile ~/.gitignore_global
```

This was inspired by [@holman's dotfiles](https://github.com/holman/dotfiles) which you should definitely check out.
