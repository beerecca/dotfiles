VIM CHEAT SHEET
===============

Basics
------

    :o [file]   Open file
    :w [file]   Save as
    :w          Write to file
    :q          Quit
    :wq         Write and quit
    :q!         Quit without saving

Cursor movement
---------------

    h           Move cursor left
    j           Move cursor down
    k           Move cursor up
    l           Move cursor right
    4j          Move cursor 4 lines down
    8k          Move cursor 8 lines up

    H           Move to top of screen
    M           Move to middle of screen
    L           Move to bottom of screen

    w           Jump forward one word
    b           Jump back one word
    e           Jump to end of next word
    2w          Jump forward 2 words
    14b         Jump back 14 words
    fx          Jump to first occurance of character x

    ^           Jump to beginning of line
    $           Jump to end of line
    gg          Go to the first line of the file
    G           Go to the last line of the file
    8gg         Go to line 8
    3G          Go to line 3
    {           Jump to previous paragraph/codeblock
    }           Jump to next paragraph/codeblock

    Ctrl + b    Move back one screen
    Ctrl + f    Move forward one screen
    Ctrl + d    Move down half screen
    Ctrl + u    Move up half screen

    /pattern    Search for 'pattern' in file
    n           Jump to next occurence of searched text
    N           Jump to previous occurence of searched text

Insert mode
-----------

    i           Insert before cursor
    I           Insert at the beginning of line
    a           Append after cursor
    A           Append at the end of line
    o           Open new line below current line
    O           Open new line above current line
    Esc         Exit insert mode

The true beauty and power lies in combining them with cursor movements:

    ea          Append after current word
    bi          Insert before current word
    fxi         Insert before the first occurence of character x
    3Go         Open new line below line 8

Editing
-------

    u           Undo
    Ctrl + r    Redo
    s           Substiture character
    cw          Change word
    cc          Change entire line
    c$          Change to the end of the line
    r           Replace single characeter
    J           Join line below and current one
    ~           Switch case of single character
    .           Repeat the last command

Copy and pasting

    x           Delete character
    dw          Delete word
    dd          Delete entire line
    D           Delete to end of line
    yw          Yank (copy) word
    yy          Yank entire line
    p           Paste (yanked or deleted text) after the cursor
    P           Paste before the cursor
    3dd         Delete 3 lines
    y3w         Yank 3 words

Marking text
------------

    v           Start visual mode
    V           Start linewise visual mode
    Ctrl + v    Start visual block mode
    o           Move to other end of marked area
    O           Move to other corner of marked area
    u           Change marked text to lowercase
    U           Change marked text to uppercase
    Esc         Exit visual mode

Especially useful in combination with copy and pasting.

    v2wy        Yank (copy) 2 words
    V8ly        Yank 8 lines above
