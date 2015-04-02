
for src in $HOME/.bash_profile.d/*; do
    if [ -s $src ]; then
        # echo $src
        . $src
    fi
done

echo 'bash profile loaded'


##
# Your previous /Users/liangwensen/.bash_profile file was backed up as /Users/liangwensen/.bash_profile.macports-saved_2015-04-01_at_23:23:34
##

# MacPorts Installer addition on 2015-04-01_at_23:23:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

