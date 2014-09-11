
set rtp+=~/.vim/bundle/Vundle.vim/

filetype off
call vundle#rc()

Bundle 'AutoClose'
Bundle 'EasyGrep'
Bundle 'EasyMotion'
Bundle 'tComment'
Bundle 'ctags.vim'
Bundle 'Emmet.vim'
Bundle 'fugitive.vim'
Bundle 'ZenCoding.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'plasticboy/vim-markdown'

" NerdTree {
    Bundle 'scrooloose/nerdtree'
" }

" package managers {
    Bundle 'pathogen.vim'
    Bundle 'gmarik/Vundle.vim'
" }

" snipMate {
    Bundle "MarcWeber/vim-addon-mw-utils"
    Bundle "tomtom/tlib_vim"
    Bundle "garbas/vim-snipmate"
    Bundle "honza/vim-snippets"
" }

" ag.vim {
    Bundle 'ag.vim'
    cabbrev ag Ag
" }

" Align {
    Bundle 'Align'
    cabbrev al Align
" }

" neocomplcache {
    Bundle 'neocomplcache'
    inoremap <expr><space> pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"
    let g:neocomplcache_enable_at_startup = 1
" }

" Syntastic {
    Bundle 'Syntastic'
    let g:syntastic_javascript_checkers = [
      \ 'jshint'
      \ ]
" }

" ctrlp {
    Bundle 'ctrlp.vim'
    let g:ctrlp_custom_ignore = {
      \ 'dir'  :  '\v[\/]\.(git|hg|svn)$',
      \ 'file' : '\v\.(exe|so|dll|unity3d|png|jpg|ico)$',
      \ 'link' : 'some_bad_symbolic_links',
      \ }
" }

filetype on
filetype plugin indent on

call pathogen#infect()

