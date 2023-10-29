# Printing info / errors
(>&2 echo "Analyzing $nfiles files...")

info() { printf "\n%s %s\n\n" "$( date )" "$*" >&2; }
error() { echo >&2 "$@"; exit }

error() {
    e_error "$@"
    exit
}

[[ "$?" == "0" ]] || error "Wow, i iz scared,"
