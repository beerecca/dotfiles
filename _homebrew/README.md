## Homebrew

Homebrew is "the missing package manager for macOS". Follow the instructions on the website to [install](https://brew.sh/).

Once installed, install default packages by running this command in this folder.
```
cat Brewfile | xargs brew install
```

Here are some other handy packages that can be installed seperately by running `brew <name of package>`:
- [`cheat`](http://brewformulas.org/Cheat) gives you a simplified cheat sheet on a given command
- [`httpie`](https://github.com/jakubroztocil/httpie) is a nice command line HTTP client
- [`tree`](http://brewformulas.org/Tree) lists the contents of the folder in a tree structure