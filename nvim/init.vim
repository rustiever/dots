" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fireplace'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'
Plug 'https://github.com/adelarsq/neoline.vim'
Plug 'ryanoasis/vim-devicons'
" Plug 'https://github.com/adelarsq/vim-devicons-emoji'
Plug 'frazrepo/vim-rainbow'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'psliwka/vim-smoothie'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'wellle/targets.vim'
Plug 'unblevable/quick-scope'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim'
Plug 'machakann/vim-sandwich'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let mapleader ="\<Space>" " leader key

let g:wakatime_PythonBinary = '/usr/local/bin/python3'
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"colorscheme gruvbox

" Speeds up startup time
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/bin/python'

" Reload VIM RC
command! Reloadrc source $MYVIMRC
nnoremap <leader>rr :Reloadrc<cr>

" Always show tabs 
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


"NerdCommenter
"Toggle comments in source code
let g:NERDToggleCheckAllLines = 1
let g:NERDSpaceDelims = 1

" Add spaces after comment
let g:NERDSpaceDelims = 1
nmap <leader>/ <plug>NERDCommenterToggle
xmap <leader>/ <plug>NERDCommenterToggle

"vim-Rainbow
let g:rainbow_active = 1

"QuickScope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_lazy_highlight = 1
let g:qs_buftype_blacklist = ['terminal', 'nofile']

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Genral sets
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
" set pumheight=20   " Avoid the pop up menu occupying the whole screen
set expandtab    " Tabs are spaces, not tabs


" set winminheight=0
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

" :W sudo saves the file
" (useful for handling the permission-denied error)
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

" Coc-config file
nnoremap <F12> :CocConfig<CR>

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
    map <silent> <Leader>' <Plug>(coc-terminal-toggle)
endif
" Search result highlight countermand
nnoremap <silent> \\ :nohlsearch<CR>
" Toggle pastemode
nnoremap <silent> <Leader>tp :setlocal paste!<CR>
"}
"Buffer {
nnoremap <silent> gb :bprevious<CR>
nnoremap <silent> gn :bnext<CR>
nnoremap <silent> <Leader>d :bd<CR>
nnoremap <F10> :ls<CR>
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

nnoremap <M-e> :CocCommand explorer<CR>





















" " auto-install vim-plug
" if empty(glob('~/.config/nvim/autoload/plug.vim'))
    " silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                " \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    " "autocmd VimEnter * PlugInstall
    " autocmd VimEnter * PlugInstall | source $MYVIMRC
" endif


" call plug#begin()

" " ====== Appearance ======
" Plug 'sheerun/vim-polyglot'
" Plug 'ryanoasis/vim-devicons'
" Plug 'vim-airline/vim-airline'
" Plug 'frazrepo/vim-rainbow'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'junegunn/goyo.vim'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'morhetz/gruvbox'

" " ====== Files ======
" Plug 'liuchengxu/vim-clap'

" " ====== Editor ======
" Plug 'psliwka/vim-smoothie'
" Plug 'easymotion/vim-easymotion'
" Plug 'preservim/nerdcommenter'
" Plug 'wellle/targets.vim'
" Plug 'unblevable/quick-scope'

" " ====== Git ======
" Plug 'rhysd/git-messenger.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'

" " ====== Helpers ======
" Plug 'andymass/vim-matchup'
" Plug 'jiangmiao/auto-pairs'
" Plug 'machakann/vim-sandwich'
" Plug 'honza/vim-snippets'
" Plug 'thaerkh/vim-workspace'
" Plug 'pechorin/any-jump.vim'
" Plug 'wakatime/vim-wakatime'
" Plug 'mattn/emmet-vim'

" " ====== languages tools ======
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" " ====== Languages ======
" " Golang 
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" call plug#end()

" " Speeds up startup time
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:python_host_prog = '/usr/bin/python'

" "Theme
" if has('termguicolors')
    " set termguicolors
" endif
" set background=dark    " Setting dark mode
" " let g:gruvbox_italic=1
" colorscheme onehalfdark

" " Mapping
" " Coc-config file
" nnoremap <F12> :CocConfig<CR>

" let mapleader ="\<Space>" " leader key

" " Visual shifting (does not exit Visual mode)
" vnoremap < <gv
" vnoremap > >gv
" " Treat long lines as break lines (useful when moving around in them)
" nmap j gj
" nmap k gk
" vmap j gj
" vmap k gk

" " Basic {
" " Add <slient> for the rhs is Ex-cmd as some GUI app, e.g., gnvim,
" " flashes when you use these mappings.
" " Quit normal mode
" " Command mode shortcut
" cnoremap <C-j> <Down>
" cnoremap <C-k> <Up>
" cnoremap <C-b> <Left>
" cnoremap <C-f> <Right>
" cnoremap <C-a> <Home>
" cnoremap <C-e> <End>
" cnoremap <C-d> <Delete>
" " jj | escaping
" inoremap jj <Esc>
" cnoremap jj <C-c>
" " Quit visual mode
" vnoremap v <Esc>
" " Move to the start of line
" nnoremap H ^
" " Move to the end of line
" nnoremap L $
" " Quick command mode
" nnoremap <CR> :
" " Yank to the end of line
" nnoremap Y y$
" " Auto indent pasted text
" " nnoremap p p=`]<C-o>
" " Open shell in vim
" if has('nvim') || has('terminal')
    " map <silent> <Leader>' <Plug>(coc-terminal-toggle)
" endif
" " Search result highlight countermand
" nnoremap <silent> \\ :nohlsearch<CR>
" " Toggle pastemode
" nnoremap <silent> <Leader>tp :setlocal paste!<CR>
" "}
" "Buffer {
" nnoremap <silent> gb :bprevious<CR>
" nnoremap <silent> gn :bnext<CR>
" nnoremap <silent> <Leader>d :bd<CR>
" nnoremap <F10> :ls<CR>
" " }

" " File {
" " File save
" nnoremap <silent> <Leader>w :update<CR>
" nnoremap <silent> <Leader>q  :q<CR>
" nnoremap <silent> <Leader>Q  :qa!<CR>
" " }
" " esc key to go normal mode in terminal
" tnoremap <Esc> <C-\><C-n>i
" "********************************

" " init.vim/vimrc
" nnoremap <F9> :e ~/.config/nvim/init.vim<CR>

" "split configuration
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
" set splitbelow splitright
" " Go to the first non-blank character of a line
" noremap 0 ^
" " Just in case you need to go to the very beginning of a line
" noremap ^ 0
" " Reload VIM RC
" command! Reloadrc source $MYVIMRC
" nnoremap <leader>rr :Reloadrc<cr>


" " Move around in insert mode, handy with auto insert braces etc.
" inoremap <M-l> <right>
" inoremap <M-h> <left>

" " Genral sets
" set nocompatible
" filetype plugin indent on      " Automatically detect file types
" syntax on                      " Syntax highlighting
" set autoindent                 " Indent at the same level of the previous line
" set autoread                   " Automatically read a file changed outside of vim
" set backspace=indent,eol,start " Backspace for dummies
" set complete-=i                " Exclude files completion
" set display=lastline           " Show as much as possible of the last line
" set encoding=utf-8             " Set default encoding
" set history=10000              " Maximum history record
" set hlsearch                   " Highlight search terms
" set incsearch                  " Find as you type search
" set laststatus=2               " Always show status line
" set mouse=a                    " Automatically enable mouse usage
" set smarttab                   " Smart tab
" set viminfo+=!                 " Viminfo include !
" set wildmenu                   " Show list instead of just completing
" set shortmess=atOI " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
" set ignorecase     " Case insensitive search
" set smartcase      " ... but case sensitive when uc present
" set scrolljump=5   " Line to scroll when cursor leaves screen
" set scrolloff=3    " Minumum lines to keep above and below cursor
" " set wrap           " Wrap long lines
" set shiftwidth=4   " Use indents of 4 spaces
" set tabstop=2      " An indentation every four columns
" set softtabstop=2  " Let backspace delete indent
" set splitright     " Puts new vsplit windows to the right of the current
" set splitbelow     " Puts new split windows to the bottom of the current
" set autowrite      " Automatically write a file when leaving a modified buffer
" set mousehide      " Hide the mouse cursor while typing
" set hidden         " Allow buffer switching without saving
" set ruler          " Show the ruler
" set showcmd        " Show partial commands in status line and Selected characters/lines in visual mode
" set showmatch      " Show matching brackets/parentthesis
" set matchtime=5    " Show matching time
" set report=0       " Always report changed lines
" set linespace=0    " No extra spaces between rows
" " set pumheight=20   " Avoid the pop up menu occupying the whole screen
" set expandtab    " Tabs are spaces, not tabs


" " set winminheight=0
" set wildmode=list:longest,full

" set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

" set whichwrap+=<,>,h,l  " Allow backspace and cursor keys to cross line boundaries

" set termencoding=utf-8
" set fileencoding=utf-8
" set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" set wildignore+=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip,
" set wildignore+=*/tmp/*,*.o,*.obj,*.so     " Unix
" set wildignore+=*\\tmp\\*,*.exe            " Windows
" set iskeyword+=-    " treat dash separated words as a word text object"

" " :W sudo saves the file
" " (useful for handling the permission-denied error)
" command! W w !sudo tee % > /dev/null
" set nobackup
" set noswapfile
" set nowritebackup
" set cursorline              " Highlight current line
" set fileformats=unix,dos,mac        " Use Unix as the standard file type
" set number                  " Line numbers on
" set clipboard=unnamedplus,unnamed

" " Annoying temporary files
" set directory=/tmp//,.
" set backupdir=/tmp//,.
" if v:version >= 703
    " set undodir=/tmp//,.
" endif

" set undofile             " Persistent undo
" set undolevels=1000      " Maximum number of changes that can be undone
" set undoreload=10000     " Maximum number lines to save for undo on a buffer reload

" " Airline 
" " enable tabline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" " enable powerline fonts
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'


" " Switch to your current theme
" let g:airline_theme = 'onehalfdark'

" " Always show tabs 
" set showtabline=2

" " We don't need to see things like -- INSERT -- anymore
" set noshowmode

" " ***********************Plugin Configurations*************************
" " Vim- sandwich
" xmap is <Plug>(textobj-sandwich-query-i)
" xmap as <Plug>(textobj-sandwich-query-a)
" omap is <Plug>(textobj-sandwich-query-i)
" omap as <Plug>(textobj-sandwich-query-a)
" xmap iss <Plug>(textobj-sandwich-auto-i)
" xmap ass <Plug>(textobj-sandwich-auto-a)
" omap iss <Plug>(textobj-sandwich-auto-i)
" omap ass <Plug>(textobj-sandwich-auto-a)
" xmap im <Plug>(textobj-sandwich-literal-query-i)
" xmap am <Plug>(textobj-sandwich-literal-query-a)
" omap im <Plug>(textobj-sandwich-literal-query-i)
" omap am <Plug>(textobj-sandwich-literal-query-a)
" " VIM-workspace
" let g:workspace_autosave = 0
" let g:workspace_autosave_untrailspaces = 0
" " Git Messenger
" nmap <Leader>m <Plug>(git-messenger)

" "fzf
" " Ctrl+t to search for a file in the current directory
" nnoremap <silent> <expr> <C-t> (len(system('git rev-parse')) ?
            " \ ':Files' :
            " \ ':call fzf#vim#gitfiles("--cached --exclude-standard --others", fzf#vim#with_preview({"options": ["--info=inline"]}))'
            " \ )."\<cr>"

" "Vim-Clap
" " F3 to search for text in the current directory
" nnoremap <F3> :Clap! grep<CR>
" nnoremap <C-F3> :Clap! grep ++query=
" vnoremap <F3> :Clap! grep ++query=@visual<CR>
" nnoremap <F4> :Clap! files<CR>
" let g:clap_layout = {'relative': 'editor'}

" "vim-Rainbow
" let g:rainbow_active = 1

" "QuickScope
" " Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" let g:qs_lazy_highlight = 1
" let g:qs_buftype_blacklist = ['terminal', 'nofile']

" "NerdCommenter
" "Toggle comments in source code
" let g:NERDToggleCheckAllLines = 1
" let g:NERDSpaceDelims = 1

" " Add spaces after comment
" let g:NERDSpaceDelims = 1
" nmap <leader>/ <plug>NERDCommenterToggle
" xmap <leader>/ <plug>NERDCommenterToggle



" "Coc.nvim

" " To get correct comment highlighting for json
" autocmd FileType json syntax match Comment +\/\/.\+$+


" nnoremap <M-e> :CocCommand explorer<CR>



" inoremap <silent><expr> <TAB>
            " \ pumvisible() ? "\<C-n>" :
            " \ <SID>check_back_space() ? "\<TAB>" :
            " \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
    " let col = col('.') - 1
    " return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm.
" if exists('*complete_info')
    " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
    " imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " Go to definition
" nmap <silent> gd <Plug>(coc-definition)
" " Go to implementation
" nmap <silent> gi <Plug>(coc-implementation)
" " Find all reference
" nmap <silent> gr <Plug>(coc-references)
" " Rename
" nmap <F2> <Plug>(coc-rename)
" " Go to type definition
" nmap <silent> gy <Plug>(coc-type-definition)

" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
    " if (index(['vim','help'], &filetype) >= 0)
        " execute 'h '.expand('<cword>')
    " else
        " call CocAction('doHover')
    " endif
" endfunction

" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')


" " Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" augroup mygroup
    " autocmd!
    " " Setup formatexpr specified filetype(s).
    " autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " " Update signature help on jump placeholder.
    " autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end


" " Apply AutoFix to problem on the current line.
" nmap <leader>.  <Plug>(coc-fix-current)


" " Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings using CoCList:
" " Show all diagnostics.
" " nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" "" Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" "" Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" "" Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>

" " Remap for do codeAction of selected region
" function! s:cocActionsOpenFromSelected(type) abort
    " execute 'CocCommand actions.open ' . a:type
" endfunction
" xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
" nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" function! SetupCommandAbbrs(from, to)
    " exec 'cnoreabbrev <expr> '.a:from
                " \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
                " \ .'? ("'.a:to.'") : ("'.a:from.'"))'
" endfunction

" " Use C to open coc config
" call SetupCommandAbbrs('C', 'CocConfig')


" " Experiments {{ "
" " autocmd Filetype dart nnoremap <F5> :CocCommand flutter.run<CR>
" " autocmd Filetype dart nnoremap <F6> :CocCommand flutter.pub.get<CR>
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
" " }} "
