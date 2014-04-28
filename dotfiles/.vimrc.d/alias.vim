
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

cabbrev escape :call leungwensen:HtmlEscape()<CR>

if !exists("*leungwensen:HtmlEscape")
    function leungwensen:HtmlEscape()
        silent s/&/\&amp;/eg
        silent s/"/\&quot;/eg
        silent s/</\&lt;/eg
        silent s/>/\&gt;/eg
    endfunction
endif

