
" UI {
    set number
    set ruler
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
    colorscheme desert
" }
" language & encoding {
    language message zh_CN.UTF-8
    set langmenu=zh_CN.UTF-8
    set encoding=utf-8
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" }
" backup {
    set history=1000
    if $VIM_CRONTAB == "true"
        set nobackup
        set nowritebackup
    endif
" }
" editting {
    let mapleader = ","
    let g:mapleader = ","
    set autoindent
    set expandtab
    set incsearch
    set list
    set nocompatible
    set showmatch
    set showcmd
    set backspace=indent,eol,start
    set formatoptions+=t
    set mouse=a
    set shiftwidth=4
    set smartindent
    set tabstop=4
    " set tw=79
    set wildignore+=*/tmp/*,*.so,*.sw*,*.zip,*.unity3d
" }
" syntax {
    if has("syntax")
        syntax on
    endif
    if &t_Co > 2 || has("gui_running")
        syntax on
        set hlsearch
    endif
    syntax enable
" }
" highlight {
    filetype off
    filetype plugin indent off
    " set runtimepath+=$GOROOT/misc/vim
    filetype plugin indent on
    syntax on
" }
" bash shell // for Yosemite {
    set shell=bash\ -l
" }

