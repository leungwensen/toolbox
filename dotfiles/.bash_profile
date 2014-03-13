
sources=(
    "$HOME/.bashrc"
    "$HOME/.spm_completion"
)
for src in sources
do
    [[ -f $src ]] && . $src
done


echo "rc file successfully loaded!"

