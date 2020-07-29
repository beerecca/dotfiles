" Filetype detection and syntax highlighting
filetype off
filetype plugin indent on
syntax on

set autoindent    " Enable auto indenting
set backspace=indent,eol,start " Allow backspace in insert mode
set cursorline    " Highlight current line
set esckeys       " Allow cursor keys in insert mode
set number        " Display line numbers
set ruler         " Display character and line count
set showmatch     " Show matching brackets
set smartindent   " Use smart indenting
set shiftwidth=2  " Shift width of x spaces
set tabstop=2     " Tabs take up x spaces
set title         " Show the filename in the window titlebar
set expandtab     " Transform tabs into spaces
set nowrap        " Do not wrap lines
set nopaste       " Do not autoindent when pasting
set nohidden      " Closing window/tab also closes buffer
set mouse=a       " Enable mouse support
set hlsearch      " Highlight Search
set incsearch     " Incremental Search
set ignorecase    " Ignore cases when searching ..
set smartcase     " .. unless uppercase in term
set wildmenu      " Enhance command-line completion

" Wrap git commit messages after x characters
au FileType gitcommit set tw=72
