
au BufNewFile,BufRead *.md    setfiletype markdown
au BufNewFile,BufRead *.mt    setfiletype html
au BufNewFile,BufRead *.psgi  setfiletype perl
au BufNewFile,BufRead *.thtml setfiletype xml
au BufNewFile,BufRead *.tt    setfiletype html


cabbrev f2c  set filetype=c
cabbrev f2h  set filetype=html
cabbrev f2p  set filetype=perl
cabbrev f2v  set filetype=vim
cabbrev f2cs set filetype=css
cabbrev f2ja set filetype=java
cabbrev f2jn set filetype=json
cabbrev f2js set filetype=javascript

cabbrev dl   %s/\n\{3,\}/\r\r/e
cabbrev dr   %s/$//g
cabbrev ds   %s/\s\+$//
cabbrev t2s  %ret! 4

cabbrev date r !date
cabbrev w!!  w !sudo tee %

cabbrev ack  Ack
cabbrev al   Align
cabbrev cmt  CommandT
cabbrev fb   FufBuffer
cabbrev fbt  FufBufferTag
cabbrev fcf  FufCoverageFile
cabbrev fd   FufDir
cabbrev ff   FufFile
cabbrev fjl  FufJumpList
cabbrev ft   FufTag


colorscheme solarized


inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"


language message zh_CN.UTF-8


let g:neocomplcache_enable_at_startup=1

let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|unity3d|png|jpg|ico)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


map Q gq
"match Underlined /\%>80v.*/


set autoindent
set expandtab
set incsearch
set list
set nocompatible
set number
set ruler
set showmatch
set smartindent
set showcmd
set background=dark
set backspace=indent,eol,start
set bdir=~/temp/vimtmp
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set history=1000
set langmenu=zh_CN.UTF-8
set listchars=tab:..,trail:.
set mouse=a
set rtp+=~/.vim/bundle/vundle/
set shiftwidth=4
set tabstop=4
set wildignore+=*/tmp/*,*.so,*.sw*,*.zip,*.unity3d


if has("syntax")
  syntax on
endif

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

syntax enable


filetype off
call vundle#rc()
Bundle 'Align'
Bundle 'ctags.vim'
Bundle 'ctrlp.vim'
Bundle 'EasyGrep'
Bundle 'fugitive.vim'
Bundle 'gmarik/vundle'
Bundle 'neocomplcache'
Bundle 'snipMate'
Bundle 'sudo.vim'
Bundle 'Syntastic'
Bundle 'taglist.vim'
Bundle 'ZenCoding.vim'
filetype on
filetype plugin indent on


if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

