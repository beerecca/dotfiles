TMUX CHEAT SHEET
================

Start a new session:

    tmux

Attach to an existing session:

    tmux a (or at, or attach)

Basics
------

A session is a container for windows and panes. A window contains one or more panes. Each pane and window are a virtual terminal. It just happens to be that windows can contain panes.

### Prefix

The default prefix for tmux is set to C-b (Control + b), but a lot of people prefer to use C-a. By adding the following to your [.tmux.conf](https://github.com/usabilla/smileyfiles/blob/master/tmux/.tmux.conf), you can find your own preference:

    set -g prefix C-a
    bind a send-prefix
    unbind C-b

The cheat sheet assumes you stick with the C-b prefix.

Sessions
--------

Start a new session with name:

    tmux new -s mysession

Attach to a specific session:

    tmux a -t mysession

List all your sessions:

    tmux ls

When in tmux you can use these shortcuts to handle your sessions

    C-b (        Previous session
    C-b )        Next session
    C-b L        Last/previous session
    C-b s        Select session from list

    C-b d        Detach from a session

Windows
-------

    C-b c        Create a new window

    C-b 1        Switch to window 1, ..., 9, 0
    C-b 9
    C-b 0
    C-b p        Previous window
    C-b n        Next window
    C-b l        Last/previous window
    C-b w        Select window from list

    C-b ,        Rename window
    C-b &        Kill window

Panes
-----

    C-b "        Split vertically
    C-b %        Split horizontally

    C-b left     Switch to pane on the left, right, up and down
    C-b right
    C-b up
    C-b down
    C-b o        Next pane
    C-b ;        Last/previous pane
    C-b q        Show pane numbers (use the number to switch to the pane)

    C-b z        Toggle pane zoom (hide all other panes in window)
    C-b space    Toggle between predefined layouts
    C-b x        Kill pane
