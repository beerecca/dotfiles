## Homebrew

Homebrew is "the missing package manager for macOS". Follow the instructions on the website to [install](https://brew.sh/).

Once installed, install default packages by running this command in this folder.
```
brew tap homebrew/bundle
brew bundle
```

- autojump: `j dirname` to jump to directory, `j -s` to view db, `j -a` to add path
- awscli: `aws` for Amazon Web Services 
- bash
- bash_completion
- colordiff: `diff filename filename` for nice diffs
- curl: `curl http://example.com -o filename` to download contents of url to a file
- diff-so-fancy: `git diff` for nicer git diffs
- ffmpeg: video, image and sound conversion
- git
- grep: `grep search_string path/to/file`
- heroku
- httpie: `http httpie.org` nicer curl alternative
- hub: git helpers, automatically available on `git` commands
- imagemagick: image converter
- mongodb: Mongo DB
- node
- nvm
- ruby
- shellcheck: `shellcheck yourscript` linter for shell scripts
- stow
- tldr: short version of man docs
- tree: show tree structure of files
- vim
- watchman
- wget: `wget https://example.com/foo` download to a file called foo
- yarn
- zsh
