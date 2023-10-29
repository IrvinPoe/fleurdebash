# arguments

usage() {
    echo "Usage: $0 [-y] <tree_dir>"
    exit 0
}

usage() {
    cat<<EOF
        Usage: $0 [select|update] <DOMAIN>
EOF
}


if [[ "$#" == "0"  ]]; then
if [[ "$1" == "-y" ]]; then
if [[ "$#" != 1 ]]; then
if [[ "$#" -ne "2" ]]; then
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
if [[ "$1" == "--version" || "$1" == "-v" ]]; then
