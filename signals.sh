trap "rm -f /var/run/imap.run" SIGTERM
trap "rm -f /var/run/imap.run" SIGHUP
trap "rm -f /var/run/imap.run" SIGKILL

trap 'echo $( date ) Backup interrupted >&2; exit 2' INT TERM

function clean_up() {
    > $ephemeral_file 
}
trap clean_up 0 1 2 3 9 15
