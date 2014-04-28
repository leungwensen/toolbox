
set rtp+=~/.vim/bundle/vundle/

filetype off
call vundle#rc()

" bundles {
    Bundle 'Align'
    Bundle 'EasyGrep'
    Bundle 'neocomplcache'
    Bundle 'The-NERD-Commenter'
    Bundle 'snipMate'
    Bundle 'Syntastic'
    Bundle 'ctags.vim'
    Bundle 'ctrlp.vim'
    Bundle 'Emmet.vim'
    Bundle 'fugitive.vim'
    Bundle 'pathogen.vim'
    Bundle 'taglist.vim'
    Bundle 'gmarik/vundle'
    Bundle 'altercation/vim-colors-solarized'
" }

filetype on
filetype plugin indent on

call pathogen#infect()

inoremap <expr><space> pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:neocomplcache_enable_at_startup = 1

let g:ctrlp_custom_ignore = {
  \ 'dir'  :  '\v[\/]\.(git|hg|svn)$',
  \ 'file' : '\v\.(exe|so|dll|unity3d|png|jpg|ico)$',
  \ 'link' : 'some_bad_symbolic_links',
  \ }
let g:syntastic_javascript_checkers = [
  \ 'jslint'
  \ ]

