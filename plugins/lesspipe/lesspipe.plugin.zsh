# Make less more cool
if [[ -r $(which lesspipe.sh) ]]; then
    LESSOPEN="|/usr/bin/lesspipe.sh %s"
    LESS="-R"
    export LESSOPEN
    export LESS
fi