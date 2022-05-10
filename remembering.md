## Things I'm Trying to Remember to Use

### Terminal Navigation

- `ctrl + r` - press again to cycle through your search
- Move in terminal with CMD -> and ALT -> and ALT DELETE as you would in your editor! https://coderwall.com/p/dapstw/keybindings-for-macosx-users-on-iterm2

### Folder Navigation

Can trust these commands will confirm/help you when you use them!

- ls
- rm
- cp
- mv
- mkdir
- tree
- cdls

### New Laptop

- Settings > Trackpad > Tap to click
- Log into your Apple ID
- Dotfiles
- Copy your iTerm (settings and default profile) from Google Drive
- Copy Raycast settings from Google Drive
- Activate VSCode Settings Sync (Code > Preferences > Settings Sync)
- Add any shortcuts to /etc/hosts
- AWS CLI
- VPN
- Github and/or Gitlab
- Any local code

### AWS CLI

To use the normal aws cli:
`aws sso login`
`aws s3 ls --profile portal_sandbox_superuser`

Terraform and Serverless can't use aws cli with sso, so you can either export the credentials from logging into the UI and grabbing them from the "Command line or programmatic access", or you can use aws-vault (which essentially exports creds), for example:
`aws-vault login portal_sandbox_superuser`
`aws-vault exec portal_sandbox_superuser -- aws s3 ls`

Note that the credentials file is only needed because of a known issue where Serverless only reads from credentials, not config.

### Git

gs = status
gl = log
ga = add

gr = reset
grc = reset commit
grf = reset to upstrream master

gc = commit
gca = commit amend

gp = push
gpf = push force

gpull = pull

gst = stash
gstl = stash list
gsta = stash apply

gnew = new branch

grb = rebase
gco = checkout
