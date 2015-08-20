
cabbrev f2c  set filetype=c
cabbrev f2h  set filetype=html
cabbrev f2p  set filetype=perl
cabbrev f2v  set filetype=vim
cabbrev f2cs set filetype=css
cabbrev f2ja set filetype=java
cabbrev f2jn set filetype=json
cabbrev f2js set filetype=javascript

cabbrev dl   %s/\n\{3,\}/\r\r/e
cabbrev dbk  %s/$//g
cabbrev ds   %s/\s\+$//
cabbrev t2s  %ret! 4

cabbrev date r !date
cabbrev w!!  w !sudo tee %

cabbrev xmlformat '<,'>xmllint\ --format\ -

cabbrev so   source ~/.vimrc

if !exists("*Leungwensen_HtmlEscape")
    function Leungwensen_HtmlEscape()
        silent s/&/\&amp;/eg
        silent s/"/\&quot;/eg
        silent s/</\&lt;/eg
        silent s/>/\&gt;/eg
    endfunction
endif
cabbrev escape :call Leungwensen_HtmlEscape()<CR>


