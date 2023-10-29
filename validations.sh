# Validations 
if [ -r "$MYRC/color_utils.sh" ]; then
if [ ! -r $OPTPARSE_LIB ]; then
# check command exists
if ! [ -x "$(command -v swaks)" ]; then
  install
fi

if [[ $( grep -wq 404 <( head -n 1 $OUTFILE) ) ]]; then

command -v systemctl 2>&1 > /dev/null && centos=7 || centos=6

if [[ "$centos" -eq 7 ]]; then
    executeorder() { systemctl $1 mysqld 2>&1 > /dev/null ; }
else
    executeorder() { service mysql $1 2>&1 > /dev/null ;}
fi
if [[ -z "$2" ]]; then
[[ "$2" -eq "0" ]] || [[ "$2" -eq "1" ]] || error "Fuck OFF! [$2] iz not 0; and ain't 1 no more. U want me to die ?"
if [[ ! -z "${1}" ]] && [[ ! -z "${2}" ]] ; then



