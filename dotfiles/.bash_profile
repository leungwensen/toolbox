
sources=(
    $HOME/.bashrc
)
for src in ${sources[@]}; do
    if [ -s $src ]; then
        # echo $src
        . $src
    fi
done

echo 'bash profile loaded'

