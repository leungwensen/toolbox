# <a id="top">script collection</a>

## content table
* [app-quit-trouble-shooting](#app-quit-trouble-shooting)
* [clean-history](#clean-history)
* [clean-lsregister-db](#clean-lsregister-db)
* [count-file-lines](#count-file-lines)
* [count-string-len](#count-string-len)
* [empty-database](#empty-database)
* [git-rm-branches](#git-rm-branches)
* [kill-pid-by-port](#kill-pid-by-port)

## content

### <a id="app-quit-trouble-shooting">app-quit-trouble-shooting</a>
    `MAC ONLY`. used when applications cannot be opened

<a href="#top">top</a>

### <a id="clean-history">clean-history</a>
    clean ~/.bash_history and ~/.histfile
#### relative commands
`echo` - display a line of text

    -n: do not output the trailing newline
    -e: enable interpretation of the backslash-escaped characters listed below
    -E: disable interpretation of those sequences in STRINGs

<a href="#top">top</a>

### <a id="clean-lsregister-db">clean-lsregister-db</a>
    `MAC ONLY`. rebuild mapping database between applications and documents

<a href="#top">top</a>

### <a id="count-file-lines">count-file-lines</a>
    count lines of all files in current directory
#### relative commands
`wc` - word count

    -c: count chars
    -l: count lines
    -w: count words
    (default: -clw)

<a href="#top">top</a>

### <a id="count-string-len">count-string-len</a>
    count inputed string length and print it.

<a href="#top">top</a>

### <a id="empty-database">empty-database</a>
    delete all tables from a database

<a href="#top">top</a>

### <a id="git-rm-branches">git-rm-branches</a>
    remove all branches except (master|dev|develop|developemnt|developing|stg|stage|staging)

<a href="#top">top</a>

### <a id="kill-pid-by-port">kill-pid-by-port</a>
    kill a specified process running on a given port.
#### relative commands
`lsof` - list open files

    +D */path/to/find: search a path recursively
    -u username: by a user
    -c program_name: by a program, eq( lsof | grep program_name )
    -u username -c program_name: by a user or by a program
    -a -u username -c program_name: by a user and a program
    -u ^username: not by a user
    -p pid: by a process
    -i: in internet connection
    -i tcp: in TCP internet connection
    -i udp: in UDP internet connection
    -a -u hacker i: user hacker opened in internet connection
    -N: NFS file
    -U: UNIX file or Socket file
    -g gpid: by process group
    -d 2: by descriptor 2
    -d 0-2: by descriptor 0, 1, 2
    -d mem: memory mapped file
    -d txt: memory mapped and running file
    -t: pid that using some resource
    -t -i: pid that using internet resource
    -r 1: print result every 1 second

<a href="#top">top</a>
