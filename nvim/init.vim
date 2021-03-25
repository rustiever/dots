lua require ('plugins')



autocmd BufWritePost plugins.lua PackerCompile
set termguicolors
colorscheme edge
set nocompatible
filetype plugin indent on      " Automatically detect file types
syntax on                      " Syntax highlighting
set autoindent                 " Indent at the same level of the previous line
set autoread                   " Automatically read a file changed outside of vim
set backspace=indent,eol,start " Backspace for dummies
set complete-=i                " Exclude files completion
set display=lastline           " Show as much as possible of the last line
set encoding=utf-8             " Set default encoding
set history=10000              " Maximum history record
set hlsearch                   " Highlight search terms
set incsearch                  " Find as you type search
set laststatus=2               " Always show status line
set mouse=a                    " Automatically enable mouse usage
set smarttab                   " Smart tab
set viminfo+=!                 " Viminfo include !
set wildmenu                   " Show list instead of just completing
set shortmess=atOI " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
set ignorecase     " Case insensitive search
set smartcase      " ... but case sensitive when uc present
set scrolljump=5   " Line to scroll when cursor leaves screen
set scrolloff=3    " Minumum lines to keep above and below cursor
" set wrap           " Wrap long lines
set shiftwidth=4   " Use indents of 4 spaces
set tabstop=2      " An indentation every four columns
set softtabstop=2  " Let backspace delete indent
set splitright     " Puts new vsplit windows to the right of the current
set splitbelow     " Puts new split windows to the bottom of the current
set autowrite      " Automatically write a file when leaving a modified buffer
set mousehide      " Hide the mouse cursor while typing
set hidden         " Allow buffer switching without saving
set ruler          " Show the ruler
set showcmd        " Show partial commands in status line and Selected characters/lines in visual mode
set showmatch      " Show matching brackets/parentthesis
set matchtime=5    " Show matching time
set report=0       " Always report changed lines
set linespace=0    " No extra spaces between rows
set expandtab    " Tabs are spaces, not tabs
set wildmode=list:longest,full
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶
set whichwrap+=<,>,h,l  " Allow backspace and cursor keys to cross line boundaries
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set wildignore+=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip,
set wildignore+=*/tmp/*,*.o,*.obj,*.so     " Unix
set wildignore+=*\\tmp\\*,*.exe            " Windows
set iskeyword+=-    " treat dash separated words as a word text object"
command! W w !sudo tee % > /dev/null
set nobackup
set noswapfile
set nowritebackup
set cursorline              " Highlight current line
set fileformats=unix,dos,mac        " Use Unix as the standard file type
set number                  " Line numbers on
set clipboard=unnamedplus,unnamed
" Annoying temporary files
set directory=/tmp//,.
set backupdir=/tmp//,.
if v:version >= 703
    set undodir=/tmp//,.
endif
set undofile             " Persistent undo
set undolevels=1000      " Maximum number of changes that can be undone
set undoreload=10000     " Maximum number lines to save for undo on a buffer reload
set showtabline=2        " Always showtabline
set noshowmode           " We don't need to see things like -- INSERT -- anymore
set shortmess+=c
set completeopt=menuone,noselect
let g:vimsyn_embed = 'l'
" Key - Mappings
let mapleader ="\<Space>" " leader key
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" Basic {
" Add <slient> for the rhs is Ex-cmd as some GUI app, e.g., gnvim,
" flashes when you use these mappings.
" Quit normal mode
" Command mode shortcut
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>
" jj | escaping
inoremap jj <Esc>
cnoremap jj <C-c>
" Quit visual mode
vnoremap v <Esc>
" " Move to the start of line
" nnoremap H ^
" " Move to the end of line
" nnoremap L $
" Quick command mode
nnoremap <CR> :
" Yank to the end of line
nnoremap Y y$
" Auto indent pasted text
" nnoremap p p=`]<C-o>
" Open shell in vim
if has('nvim') || has('terminal')
    " map <silent> <Leader>' <Plug>(coc-terminal-toggle)
endif
" Search result highlight countermand
nnoremap <silent> \\ :nohlsearch<CR>
" Toggle pastemode
nnoremap <silent> <Leader>tp :setlocal paste!<CR>
"}
"Buffer {
" nnoremap <silent> gb :bprevious<CR>
" nnoremap <silent> gn :bnext<CR>
nnoremap <silent> <Leader>d :bd<CR>
" }

" File {
" File save
nnoremap <silent> <Leader>w :update<CR>
nnoremap <silent> <Leader>q  :q<CR>
nnoremap <silent> <Leader>Q  :qa!<CR>
" }

" init.vim/vimrc
nnoremap <F9> :e ~/.config/nvim/init.vim<CR>

"split configuration
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow splitright
" Go to the first non-blank character of a line
noremap 0 ^
" Just in case you need to go to the very beginning of a line
noremap ^ 0

" move lines which takes also count
nnoremap [m  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]m  :<c-u>execute 'move +'. v:count1<cr>
" add empty lines which takes also count
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Quickly edit your macros

nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>


" BarBar
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"
"
"nvim-compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" nvim-tree

let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

nnoremap <C-t> :NvimTreeToggle<CR>
"nnoremap <leader>r :NvimTreeRefresh<CR>
"nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them
