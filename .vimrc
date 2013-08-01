call pathogen#infect()

set nocompatible
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent
set autoread
set showmatch
set incsearch
set laststatus=2
set hlsearch
set number
set ruler
set textwidth=80
set cursorline

" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu

" change buffers without warning
set hidden

" backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" integrate with OS clipboard
if $TMUX == ''
    set clipboard+=unnamed
endif

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

syntax on
filetype plugin indent on

let mapleader=","

" open files in current directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap ## <C-R>=expand('%:p')<cr>
map <leader>e :edit %%
map <leader>v :view %%

" switch between last two files
nnoremap <leader><leader> <c-^>

" case senstive search with capital letters
set ignorecase smartcase
" clear search
nnoremap <CR> :noh<CR><CR>

" relative numbering
function! g:ToggleNuMode()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
map <C-n> :call g:ToggleNuMode()<cr>

" no cheating
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" navigate splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" command-t/rails specific shortcuts
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>

" run current file spec
map <leader>ss<cr>\|!rspec expand('%:p')<cr>

" escape to clear command-t
let g:CommandTCancelMap=['<ESC>','<C-c>']
let g:CommandTSelectPrevMap=['<C-p>', '<C-k>', '<Esc>OA', '<Up>']
let g:CommandTSelectNextMap=['<C-n>', '<C-j>', '<Esc>OB', '<Down>']

set wildignore+=vendor/**,tmp/**,log/**,public/assets/**,bin/**,coverage/**,*.png,*.jpg,*.gif,*.swf,*.o,*.obj

" restore cursor position
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2
au BufNewFile,BufReadPost *.eco setl shiftwidth=2

" cleanup whitespace
autocmd BufWritePre * :%s/\s\+$//e

set background=dark
colorscheme elflord
