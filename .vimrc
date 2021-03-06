syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set t_Co=256 
let $LANG='en' 
let mapleader = ","
let g:mapleader = ","


" set clipboard=unnamed   " Copies (yy and dd etc) go to main clipboard
set autoindent          " auto indenting
set backspace=2         " backspace in insert mode works like normal editor
set showmatch           " highlight matching for brackets
set wildmenu            " visual autocomplete for command menu
set number              " line numbers
set nobackup            " get rid of anoying ~file
set cursorline
set tabstop=4           " On pressing tab, insert 4 spaces
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set expandtab
set langmenu=en         " Always show current position
set ruler               " Height of the command bar
set cmdheight=2
set pastetoggle=<F2>    " Toggles paste mode

" Search Highlighting
set hlsearch
nnoremap <F3> :set hlsearch!<CR>

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Fix netrw (file viewer)
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Pane switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"-------------------------------------------------------------------------------
" Theme
let g:hybrid_custom_term_colors = 1
set background=dark
try
    colorscheme hybrid
catch
endtry

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

"-------------------------------------------------------------------------------
" Vim plugins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
    Plug 'tpope/vim-surround'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" CTRLP
" Shortcuts
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-r> to switch to regexp mode.
" Press <c-d> to switch to filename only search instead of full path.
let g:ctrlp_map = '<c-p>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
