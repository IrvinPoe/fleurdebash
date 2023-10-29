# MENUS PROMPT

PS3='Sélectionner les adresses IP à louqueuper : '
options=( "option 1" "option de merde" "quit" )

select opt in "${options[@]}"
do
    case $opt in
        "option 1":
            checkplage 72.128.95
            ;;
        "option de merde")
            checkplage 73.128.95
            ;;
        "quit")
            break
            ;;
        *) echo invalid option;;
    esac
done



case $1 in
    select)  do_select $2  ;;
    update)  do_update $2 $3;;
    *)   echo >&2 "`basename $0`: illegal option -- $1"; 
	 usage ; exit 1 ;;
esac

