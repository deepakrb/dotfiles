syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
colorscheme hybrid
let $LANG='en' 

set autoindent          " auto indenting
set background=dark
set backspace=2         " backspace in insert mode works like normal editor
set showmatch           " highlight matching for brackets
set wildmenu            " visual autocomplete for command menu
set number              " line numbers
set nobackup            " get rid of anoying ~file
set cursorline
set tabstop=4           " when indenting with '>', use 4 spaces width
set shiftwidth=4        " On pressing tab, insert 4 spaces
set expandtab
set langmenu=en         " Always show current position
set hlsearch            " Highlight search terms
set ruler               " Height of the command bar
set cmdheight=2

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" CTags
set tags+=~/.vim/tags/sdl2 

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

