" _   ___     _____ __  __
"| \ | \ \   / /_ _|  \/  |
"|  \| |\ \ / / | || |\/| |
"| |\  | \ V /  | || |  | |
"|_| \_|  \_/  |___|_|  |_|
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "Themes
    Plug 'joshdick/onedark.vim'
    Plug 'tomasiser/vim-code-dark'
    " Intellisense & Snippets
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Rainbow parantheses 
    Plug 'junegunn/rainbow_parentheses.vim'
    " EZ commenting
    Plug 'tpope/vim-commentary'
    " Startify
    Plug 'mhinz/vim-startify' 
    " Git integration 
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Which key
    Plug 'liuchengxu/vim-which-key'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
    " Smooth scrolling
    Plug 'psliwka/vim-smoothie'
    " Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons' 
    call plug#end()

    
" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif 
