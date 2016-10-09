for file in split(glob('~/.vimrc.d/*.vim'), '\n')
    if filereadable(file)
        exe 'source' file
    endif
endfor
