" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
map <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Fix terminal & sounds
set t_RV=
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Enable syntax highlighting
syntax enable

" Use Unix as the standard file type
set ffs=unix

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" set line numbers, use leader 0 to disable, leader 1 to re-enable
set number
map <leader>1 :set number<cr>
map <leader>0 :set nonumber<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-@> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t0 :tabmove0<cr>
map <leader>tt :tabnext<cr>
map <leader>tp :tabprev<cr>

" C build mappings
map <leader>cc :!cc %<cr>
map <leader>ao :!./a.out<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Remap VIM 0 to first non-blank character
map 0 ^

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" highlight cursor
map <leader>cl :set cursorline cursorcolumn!<cr>

" reload current file
map <leader>e :e!<cr>

call plug#begin()

Plug 'flazz/vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/vim-markdown'
Plug 'Yggdroot/indentline'
Plug 'scrooloose/syntastic'
Plug 'girishji/vimcomplete'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

call plug#end()

set completeopt-=preview

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

map <leader>at :AirlineTheme 

"let g:airline_left_sep = '|'
let g:airline_symbols.linenr = ' ln: '
let g:airline_symbols.maxlinenr = ' ~ '
let g:airline_symbols.colnr = 'pos: '
let g:airline_theme='bubblegum'
"let g:airline_theme='deus'

"let g:airline_section_a = airline#section#create([''])
"let g:airline_section_b = airline#section#create([''])
"let g:airline_section_c = airline#section#create([''])
"let g:airline_section_x = airline#section#create([''])
"let g:airline_section_y = airline#section#create([''])

colorscheme codedark

"autocmd VimEnter * redraw!
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr', 'colnr'])
