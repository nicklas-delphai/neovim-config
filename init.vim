" ----------------------------------------------------------------------------
" ------------------------------------LEADER----------------------------------
" ----------------------------------------------------------------------------
let mapleader =","

if !exists('g:vscode')
  " ordinary neovim

  " install vim-plug if not installed
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  " ----------------------------------------------------------------------------
  " ---------------------------Config before plugin load------------------------
  " ----------------------------------------------------------------------------
  source $HOME/.config/nvim/configs/plugins/polyglot.vim


  " ----------------------------------------------------------------------------
  " -----------------------------------Plugins----------------------------------
  " ----------------------------------------------------------------------------
  call plug#begin('~/.config/nvim/plugged')
  " " " ------------ Feel & Look ------------
  Plug 'dracula/vim', { 'as': 'dracula' } " Theme
  " Plug 'dunstontc/vim-vscode-theme'
  Plug 'bling/vim-airline' " Statusbar bottom
  Plug 'terryma/vim-smooth-scroll'
  " " Plug 'Yggdroot/indentLine'
  " " -------------- Syntax ---------------
  Plug 'hashivim/vim-terraform'
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'posva/vim-vue'
  Plug 'mboughaba/i3config.vim'
  " Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'baskerville/vim-sxhkdrc'
  " Plug 'pangloss/vim-javascript'
  Plug 'sheerun/vim-polyglot'
  " Plug 'peitalin/vim-jsx-typescript'
  " Plug 'HerringtonDarkholme/yats.vim'
  " Plug 'leafgarland/typescript-vim'
  " Plug 'maxmellon/vim-jsx-pretty'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'jparise/vim-graphql'
  " " -------------- utility --------------
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'mattn/emmet-vim'
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Python syntax
  Plug 'chrisbra/Colorizer'
  Plug 'tomtom/tcomment_vim'
  " Plug 'Galooshi/vim-import-js'
  " Plug 'bfredl/nvim-ipy', {'do': ':UpdateRemotePlugins'}
  Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
  Plug 'dense-analysis/ale'
  Plug 'rhysd/vim-grammarous'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'kevinhwang91/rnvimr'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'mhinz/vim-signify'
  Plug 'chrisbra/SudoEdit.vim'
  call plug#end()


  " ----------------------------------------------------------------------------
  " ----------------------------Plugin Configs----------------------------------
  " ----------------------------------------------------------------------------
  source $HOME/.config/nvim/configs/plugins/auto_pairs.vim
  source $HOME/.config/nvim/configs/plugins/smooth_scroll.vim
  " source $HOME/.config/nvim/configs/plugins/indent_line.vim
  source $HOME/.config/nvim/configs/plugins/semshi.vim
  source $HOME/.config/nvim/configs/plugins/colorizer.vim
  " source $HOME/.config/nvim/configs/plugins/ctrlp.vim
  " source $HOME/.config/nvim/configs/plugins/nvimIpy.vim
  source $HOME/.config/nvim/configs/plugins/coc.vim
  source $HOME/.config/nvim/configs/plugins/ale.vim
  source $HOME/.config/nvim/configs/plugins/pyindent.vim
  source $HOME/.config/nvim/configs/plugins/grammarous.vim
  source $HOME/.config/nvim/configs/plugins/rnvimr.vim
  source $HOME/.config/nvim/configs/plugins/fzf.vim
  source $HOME/.config/nvim/configs/plugins/graphql.vim
  source $HOME/.config/nvim/configs/plugins/fugitive.vim
  source $HOME/.config/nvim/configs/plugins/signify.vim
  source $HOME/.config/nvim/configs/plugins/terraform.vim


  " ----------------------------------------------------------------------------
  " -----------------------------------Imports----------------------------------
  " ----------------------------------------------------------------------------
  source $HOME/.config/nvim/configs/hotkeys.vim
  source $HOME/.config/nvim/configs/autocmds.vim
  source $HOME/.config/nvim/configs/qtsplit.vim
  source $HOME/.config/nvim/configs/general.vim
  source $HOME/.config/nvim/configs/filetypes/tex.vim
  source $HOME/.config/nvim/configs/filetypes/md.vim
  source $HOME/.config/nvim/configs/filetypes/html.vim
  source $HOME/.config/nvim/configs/filetypes/tsx.vim
  source $HOME/.config/nvim/configs/filetypes/py.vim
else
  source $HOME/.config/nvim/configs/plugins/vscode.vim
endif
