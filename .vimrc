" Vundle ----------------------------------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
call vundle#end()
filetype plugin indent on

" Color scheme
set t_Co=256
set background=dark
colorscheme default
autocmd VimEnter,Colorscheme * :hi CursorLine ctermbg=236 cterm=none
autocmd VimEnter,Colorscheme * :hi ColorColumn ctermbg=233 cterm=none
autocmd VimEnter,Colorscheme * :hi LineNr ctermbg=233 cterm=none
syntax enable

" Basic options
set autoindent
set autoread
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set equalalways
set laststatus=2
set lazyredraw
set list
set listchars=tab:¦\ ,trail:·
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set relativenumber
set ruler
set scrolloff=5
set shortmess+=I        " disable the welcome screen
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\ [%{&encoding}]\%=\ [%p%%:\ %l/%L]
set ttyfast
set undofile
set wildmenu
set title

" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END

" Tabs, spaces, wrapping
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap
set textwidth=85
set formatoptions=qrn1
set colorcolumn=+1


" Faster Esc
inoremap jk <ESC>

" Backups and Undo
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups

" Sudo to write
cmap w!! %!sudo tee > /dev/null %

" Better movements on wrapped lines
noremap j gj
noremap k gk

" Leader ----------------------------------------------------------------------------

let mapleader = ","
let maplocalleader = "\\"

" Searching -------------------------------------------------------------------------

set ignorecase  " Ignore case in search patterns.

set smartcase   " Override the 'ignorecase' option if the search pattern contains
                " upper case characters.

set incsearch   " While typing a search command, show where the pattern, as it was
                " typed so far, matches.

set hlsearch    " When there is a previous search pattern, highlight all its matches.

map <Leader><Space> :nohlsearch<CR>

" Keep search matches in the middle of the window.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

" Better splits ---------------------------------------------------------------------
autocmd VimResized * wincmd =

set splitbelow
set splitright

" Various filetype-specific stuff ---------------------------------------------------

" Nginx
au BufRead,BufNewFile /etc/nginx/* set ft=nginx

" PHP, PHP-FPM and Smarty
au BufNewFile,BufRead *.tmpl setlocal filetype=smarty
au BufRead,BufNewFile /etc/php/php-fpm.conf set ft=dosini

" TMUX
au BufRead,BufNewFile ~/.tmux.conf set ft=tmux

" MSMTP
au BufRead,BufNewFile ~/.msmtprc    set ft=msmtp
au BufRead,BufNewFile /etc/msmtprc  set ft=msmtp

" Vim
au FileType help setlocal textwidth=78

" Go
au FileType go setlocal noexpandtab softtabstop=0 shiftwidth=8

" C
au FileType c setlocal noexpandtab softtabstop=0 shiftwidth=8

" Pkgfile
au BufNewFile,BufRead Pkgfile setlocal filetype=sh noexpandtab softtabstop=0 shiftwidth=8

" Markdown
au BufNewFile,BufRead *.md set filetype=markdown

" Poor man's JSON syntax
au BufNewFile,BufRead *.json setlocal filetype=javascript

" Twig
au BufNewFile,BufRead *.twig setlocal filetype=htmljinja

" Shell scripts
au FileType sh setlocal noexpandtab softtabstop=0 shiftwidth=8
au BufNewFile,BufRead .mkshrc setlocal filetype=sh

" HTML
au FileType html setlocal shiftwidth=2 softtabstop=2 expandtab

" JavaScript
au FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
let g:syntastic_javascript_checkers = ['jshint']

" Coffescript
au BufNewFile,BufRead *.coffee setlocal shiftwidth=2 softtabstop=2 expandtab

" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
