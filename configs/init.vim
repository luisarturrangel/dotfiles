" change cc color
highlight ColorColumn ctermbg=0 guibg=lightgray
set colorcolumn=90
" settings
filetype plugin on
set termguicolors
set noro
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set relativenumber
set title
set ttimeoutlen=0
set wildmenu
set encoding=UTF-8
set autoindent
set wrap
set laststatus=2
set incsearch
set wildmode=longest,list
set ttyfast
set backupdir=~/.chace/vim
set t_Co=256
filetype plugin indent on
syntax on
" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
" tab config
set softtabstop=4
set expandtab
set shiftwidth=4
set tabstop=4
"Binds
nnoremap q :quit<CR>
nnoremap <C-q> :quit!<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
" set defaut font
if has('gui_running')
    set guifont=Jetbrains/ Mono
endif

call plug#begin()
    Plug 'https://github.com/terryma/vim-multiple-cursors'
    Plug 'https://github.com/lambdalisue/suda.vim'
    Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
    Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/junegunn/vim-easy-align'
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
    Plug 'https://github.com/SirVer/ultisnips'
    Plug 'https://github.com/honza/vim-snippets'
    Plug 'https://github.com/scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'https://github.com/christoomey/vim-tmux-navigator'
    Plug 'https://github.com/vim-airline/vim-airline'
    Plug 'https://github.com/ap/vim-css-color'
    Plug 'https://github.com/tpope/vim-surround' "ysw
    Plug 'https://github.com/preservim/tagbar'
    Plug 'https://github.com/plasticboy/vim-markdown'
    Plug 'https://github.com/vim-airline/vim-airline-themes'
    Plug 'https://github.com/elvessousa/sobrio'
    Plug 'https://github.com/tpope/vim-commentary'
    Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'https://github.com/savq/melange'
    Plug 'https://github.com/catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

" coc config
let g:coc_global_extensions = [
	\'coc-snippets',
	\'coc-pairs',
	\'coc-tsserver',
	\'coc-eslint',
	\'coc-prettier',
	\'coc-json',
    \'coc-emmet',
    \'coc-pyright',
    \'coc-python',
    \'coc-phpls',
    \'coc-godot',
    \'coc-solargraph'
	\]
" Language server stuff
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

let g:suda_smart_edit=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enable=1
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" Disable math text conceal feature
let g:tex_conceal=''
let g:vim_markdown_math=1
" Markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_fontmatter=1
let g:vim_markdown_conceal=0
let g:vim_markdown_fenced_labguages=['tsx=typescriptreact']
lua require'nvim-treesitter.configs'.setup{highlight={enable=true}}
colorscheme melange
