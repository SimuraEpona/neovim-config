filetype on
syntax on

colorscheme onedark

set backspace=indent,eol,start               "退格键保持一致
let mapleader = ','
set noshowmode                               "不显示左下角的模式
set encoding=utf-8
set number
set autoread
set autowriteall                             "切换Buffer时自动保存
set fileencodings=ucs-bom,utf-8,sjis,default "设置编码格

set tabstop=8
set expandtab
set softtabstop=2
set shiftwidth=2
set colorcolumn=120

"-------------Search--------------"
set hlsearch                                "Highlight all matched terms.
set incsearch                               "Incrementally highlight, as we type.


"-------------Split Management--------------"
set splitbelow                                 "Make splits default to below...
set splitright                                "And to the right. This feels more natural.

""We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-------------Mappings--------------"
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>vsp :vsp<cr>
nmap <Leader>hsp :split<cr>

imap jj <Esc>

"-----------Package Manage-------------"
call plug#begin('~/.config/nvim/bundle')
  Plug 'itchyny/lightline.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'dense-analysis/ale'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
call plug#end()

source ~/.config/nvim/defx.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/futitive.vim
