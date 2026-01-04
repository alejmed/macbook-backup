# 🔍 Search through command history
function hs() {
    history | grep "$1"
}

# 📁 Create a directory and cd into it
function mkcd() {
    mkdir -p "$1" && cd "$1"
}

# 📦 Extract any archive
function extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)          echo "'$1' cannot be extracted" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# 🔄 Create a backup of a file
function backup() {
    cp "$1" "$1.bak"
}

# 📊 Get size of directory
function dirsize() {
    du -sh "$1"
}

# 🌐 Get your public IP
function myip() {
    curl -s https://api.ipify.org
}

# 🔍 Find files by name
function ff() {
    find . -type f -name "*$1*"
}

# 💻 Start a simple HTTP server
function serve() {
    local port="${1:-8000}"
    python3 -m http.server "$port"
}

# 🗑️ Safe remove - moves files to trash instead of permanent deletion
function trash() {
    mv "$@" ~/.Trash/
}

# 📝 Create and edit a new file
function new() {
    touch "$1" && $EDITOR "$1"
}

# 🔄 Git pull all subdirectories
function gpa() {
    for dir in */; do
        if [ -d "$dir/.git" ]; then
            echo "📂 Updating ${dir%/}..."
            (cd "$dir" && git pull)
        fi
    done
}
