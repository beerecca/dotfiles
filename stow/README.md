Stow
===

[Stow](https://www.gnu.org/software/stow/) is a super simple way of managing your dotfiles.

Once configured, running `stow <directory>` will instruct stow to create symlinks in your $HOME folder to the files and folders in that directory. This allows you to keep your configuration files organized and in your dotfiles repo.

## Installation

The Brewfile in this repo includes `stow`. But to install manually run:

```bash
brew install stow
```

Be sure to configure your home directory in the `.stowrc`.

Then the first folder you should "stow" is this one by running this from the dotfiles root:

```
stow -t ~ stow
```
