# dotfiles

My collection of configuration files for development. Particularly useful to set up a new computer quickly! Keep in mind I've built these for myself so they will need some tweaking if you want to use them.

### What are dotfiles?

Dotfiles are files/directories with a `.` prepended to their name. For example, `.bashrc`. The leading dot is used as an indicator that these are hidden configuration files. People tend to backup and also share their dotfiles as they contain super useful tools and shortcuts that make developing easier. An example of a site dedicated to sharing dotfiles is <http://dotfiles.org>.

**Fun dotfiles fact!**

> The legend goes that dotfiles arose from a bug in the earliest days of UNIX: in an effort to avoid listing the `.` and `..` entries of a directory, the `ls` command skipped files that _began_ with the `.` character. As a result, any file with a name beginning with `.` was not reported by `ls`, i.e. it was a "hidden" file. A user's home directory was a convenient place to put user-specific configuration files, but such files were also an eyesore; one popular solution to this problem was to make those configuration files hidden so that they wouldn't annoy the user. Thus, the tradition of dotfiles was born.

**Using this repo**

Fork this repo to create your own dotfiles, then clone that. Or, if you're just setting up your computer and you don't have git yet:

First create a directory to store your dotfiles.

```
cd ~/Projects
mkdir dotfiles
```

Then download these dotfiles and copy them into your `dotfiles` directory.

```
cd dotfiles
curl -L https://api.github.com/repos/beerecca/dotfiles/tarball | tar xz --strip=1
```

**Installing homebrew**

Homebrew is a package manager for macOS. This repo includes a list of packages that are useful to install straight away.

First [install brew](<(https://brew.sh/)>). Then install the brew packages defined in the Brewfile in this repo:

```
brew bundle --file _homebrew/Brewfile
```

**Installing the dotfiles packages**

Each of the folders in this repo is a "dotfiles package". They contain configuration files and scripts that are useful when using that tool. They also each include a README with more info and suggestions. You can use `stow` to easily install (symlink) these packages into your \$HOME directory.

If you followed the homebrew step `stow` will have already been installed. If not run: `brew install stow`.

Copy the `.stowrc.example` in the stow directory:

```
cd stow
cp .stowrc.example .stowrc
```

Now set the `--target` property in that file to point to your \$HOME directory. e.g. `--target=/Users/gertrude`. This file creates the default command line options for when you run stow.

Then, from the root of your dotfiles folder, run the following command to create a symlink for all the files in this repo's stow folder to your home directory (aka the target, aka `~`, aka `/Users/gertrude`).

```
stow -t ~ stow
```

Then run `stow` on each of the folders in this repo that you want to use. Any folders prefixed with an underscore are not intended for stowing.

```
stow bash
stow git
stow vim
```

[Read more](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/) about using stow for dotfiles.

**Running the macos script**
Run `bash .macos` to configure lots of handy settings for your Mac.

**Editing the dotfiles packages**

If you want to edit your dotfiles, always do so in the `dotfiles` project where you originally cloned this repo. Then run `restow` to update the symlinks and restart your terminal.

**Congrats!**

You have your very own dotfiles! Add or edit your own configurations to your heart's content. Each folder in this repo has a readme that will explain how to do so, and include links for further references.
