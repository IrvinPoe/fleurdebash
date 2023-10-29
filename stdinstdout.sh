# stdin / stdout / stderr / redirections

while read hostf; do
    $hostf '{host: $host} + .' "$tree_dir/$hostf" | sed 's/ansible_//g' >> "${tree_dir}.json"
done < <(ls $tree_dir)


while read ts ip name; do 
    if [[ "$printmacs" == "0" ]]; then
        mac=""
    fi
    echo "$(date --date=@$ts) $ip $name $mac"
done < <(awk '{ print $3, $2, $4 }' /var/lib/arpwatch/arp.dat | sort -g)
while read flagpath; do 
    echo "Will execute: /var/scripts/exae_dump.sh ${flagpath%/$flagfile} ${flagfile} ${destination}"  | logger -t exae
    echo "/var/scripts/exae_dump.sh ${flagpath%/$flagfile} ${flagfile} ${destination}"  |& logger -t exae
done < <(find $searchdir -maxdepth $depth -name ${flagfile})

&>$OUTFILE ssh $host "whoami"


# How to handle user input while already reading from stdin ?
# Read from other fd 
while read -u3 imageid1 imageid2; do
  echo "Which image to delete ? 1 or 2 ? Or fuck-all ?"
done 3< <(cat images-pairs.txt)
