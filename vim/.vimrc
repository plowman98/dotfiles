" .vimrc

" Basic settings
set number
set title
set showmatch       " Highlight matching parentheses
set visualbell      " Use visual bell instead of beeping
set hlsearch        " Highlight search results

" Indentation settings
set expandtab       " Use spaces instead of tabs
set tabstop=4       " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set softtabstop=4   " Number of spaces that a <Tab> counts for while performing editing operations
set autoindent      " Copy indent from current line when starting a new line
set smartindent     " Automatically insert indents in some cases (e.g., after a '{' in C-like languages)
