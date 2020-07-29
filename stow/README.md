# Stow

[Stow](https://www.gnu.org/software/stow/) helps you manage your dotfiles.

Once configured, running `stow <directory>` will instruct stow to create symlinks in your \$HOME folder to the files and folders in that directory. This allows you to keep your configuration files organized and in your dotfiles repo inside your Projects folder (or wherever else you want it).

## Installation

The Brewfile in this repo includes `stow`. But to install manually run:

```bash
brew install stow
```

Be sure to configure your home directory in the `.stowrc`.

Then, from the root of your dotfiles folder, run the following command to create a symlink for all the files in this repo's stow folder to your home directory (aka the target, aka `~`, aka `/Users/gertrude`).

```
stow -t ~ stow
```
