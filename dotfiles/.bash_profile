
for src in $HOME/.bash_profile.d/*; do
    if [ -s $src ]; then
        # echo $src
        . $src
    fi
done

echo 'bash profile loaded'

export PATH="/Users/liangwensen/qcloud:$PATH"
