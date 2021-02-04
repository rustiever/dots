lua require('plugins')
autocmd BufWritePost plugins.lua PackerCompile

set termguicolors              " enable true colors support
colorscheme moonfly
let g:moonflyCursorColor = 1
let g:moonflyUnderlineMatchParen = 1
lua require ('galaxy')
lua require ('tree-sitter')
lua require ('lsp-config')
lua require('gitsigns').setup()

"QuickScope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_lazy_highlight = 1
let g:qs_buftype_blacklist = ['terminal', 'nofile']

" lua <<EOF
" vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
" vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
" vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
" vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
" vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
" vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
" vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
" vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
" EOF






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
set completeopt=menu,menuone,noselect
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
" Move to the start of line
nnoremap H ^
" Move to the end of line
nnoremap L $
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
" esc key to go normal mode in terminal
tnoremap <Esc> <C-\><C-n>i
"********************************

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

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>

" Vim-go 
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
"NerdCommenter
"Toggle comments in source code
let g:NERDToggleCheckAllLines = 1
let g:NERDSpaceDelims = 1

" Add spaces after comment
let g:NERDSpaceDelims = 1
nmap <leader>/ <plug>NERDCommenterToggle
xmap <leader>/ <plug>NERDCommenterToggle

" BarBar 
" Magic buffer-picking mode
nnoremap <silent> <C-s> :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
" Move to previous/next
nnoremap <silent>    gb :BufferPrevious<CR>
nnoremap <silent>    gn :BufferNext<CR>
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
"
"
" Vsnip
" Jump forward or backward
imap <expr> <C-j> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-k>'
smap <expr> <C-j> vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-k>'
imap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-j>'
smap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-j>'
" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" -- lsp provider to find the cursor word definition and reference
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
" -- code action
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
" -- show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
" -- scroll down hover doc
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.hover').smart_scroll_hover(1)<CR>
" -- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.hover').smart_scroll_hover(-1)<CR>
" -- show signature help
nnoremap <silent> gs :Lspsaga signature_help<CR>
" -- rename
nnoremap <silent>gr :Lspsaga rename<CR>
" -- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
" -- preview definition
nnoremap <silent> gd :Lspsaga preview_definition<CR>
" -- show
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
" -- jump diagnostic
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
" -- float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent> <A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent> <A-d> <C-\><C-n>:Lspsaga close_floaterm<CR>
