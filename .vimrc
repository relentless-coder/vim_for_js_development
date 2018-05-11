set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/syntastic'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'flazz/vim-colorschemes'
 Plugin 'mxw/vim-jsx'
 Plugin 'othree/html5.vim'
 Plugin 'elzr/vim-json'
 Plugin 'bling/vim-airline'
 Plugin 'valloric/youcompleteme'
 Plugin 'pangloss/vim-javascript'
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
 Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
let g:ycm_autoclose_preview_window_after_completion=1
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

syntax on
colorscheme dracula
let g:gruvbox_contrast_dark = 'hard'
set background=dark 
map <C-e> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

nnoremap <C-k> <C-w><UP> 
nnoremap <C-j> <C-w><DOWN> 
nnoremap <C-h> <C-w><LEFT> 
nnoremap <C-l> <C-w><RIGHT> 

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-m>'
let g:multi_cursor_quit_key='<Esc>'

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
