" required for vim setup
set nocompatible 
" show line number
set nu
" allow copy and paster
set clipboard=unamed
set encoding=utf-8
filetype off
" install vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" add plugins here
Plugin 'gmarik/Vundle.vim'
Plugin 'maralla/validator.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on
" Powerline setup
set t_Co=256
let g:Powerline_symbols = "fancy"
" validator setup
let g:validator_permament_sign = 1
" autoformat with pep8 on save
let g:autopep8_on_save = 1
" close diff window
let g:autopep8_disable_show_diff=1
" ignore some formatings
let g:autopep8_ignore="E501,W293,E309,E701,E702,E703"
" let python handle highlighting
let python_highlight_all=1
" set python3 as the default interpretor
let g:ycm_python_binary_path = '/usr/local/bin/python3'
" close show documentation after completion
let g:ycm_autoclose_preview_window_after_completion=1
" remap leader key to space bar
let mapleader=" "
let g:ycm_goto_buffer_command = 'vertical-split'
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>g :YcmComplete GoToDefinitionElseDeclaration<CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>b oimport pdb; pdb.set_trace()<Esc>
syntax on
colorscheme dracula
