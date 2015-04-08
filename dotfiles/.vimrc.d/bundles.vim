
set rtp+=~/.vim/bundle/Vundle.vim/

filetype off
call vundle#rc()

Bundle 'Emmet.vim'
Bundle 'gorodinskiy/vim-coloresque'

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

" comments {
    Bundle "scrooloose/nerdcommenter"
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
filetype plugin on

call pathogen#infect()

