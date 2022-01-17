" This is the main plugin list, sourced by modules/plugins.vim
" Configuration goes in the appropriate modules/plugins/*.vim file.
" So configuration for tmux.vim would go in modules/plugins/tmux.vim.vim

Plug 'Keithbsmiley/tmux.vim'
Plug 'easymotion/vim-easymotion'
Plug 'PeterRincker/vim-argumentative'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'embear/vim-localvimrc'
Plug 'guns/vim-sexp'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-signify'
if has('conceal')
  Plug 'Yggdroot/indentLine'
else
  Plug 'nathanaelkane/vim-indent-guides'
endif
Plug 'raymond-w-ko/vim-niji'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'dkprice/vim-easygrep'
Plug 'tpope/vim-obsession'
Plug 'overcache/NeoSolarized'
Plug 'altercation/vim-colors-solarized'
Plug 'tmhedberg/indent-motion'
Plug 'ryanoasis/vim-devicons'
Plug 'mbbill/undotree'
Plug 'flowtype/vim-flow'
Plug 'bkad/CamelCaseMotion'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'elzr/vim-json'
Plug 'djoshea/vim-autoread'
Plug 'sheerun/vim-polyglot'
Plug 'wesQ3/vim-windowswap'
Plug 'mileszs/ack.vim'
Plug 'Olical/vim-enmasse'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'frazrepo/vim-rainbow'
Plug 'stephpy/vim-yaml'
Plug 'gerrard00/vim-mocha-only', { 'for': ['javascript', 'typescript', 'jsx', 'javascriptreact'] }
Plug 'junegunn/gv.vim'
Plug 'sodapopcan/vim-twiggy'
if has('nvim')
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'fannheyward/telescope-coc.nvim'
else
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
endif
Plug 'simeji/winresizer'
Plug 'liuchengxu/vista.vim'
Plug 'mattf1n/vimmarp'
Plug 'skywind3000/asyncrun.vim'
Plug 'mattn/emmet-vim'
Plug 'doums/darcula'
Plug 'fourjay/vim-yamsong'
