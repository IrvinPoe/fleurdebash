# Calculs
smalltotal=$(calc -p "8.5 * $count")
cur=$(( $cur + 1 ))
temp=$(echo "($1 / 2) - 3" | bc)
ps hv $procnames | awk '{ print $8 }'  | paste -s -d'+'  | bc
megas=$(echo ${kilos:-0} / 1024 | bc)
economie="${1:-16}"
euros=$(echo "$economie * 0.002 * 24 * 365 * 0.10 * $serveurs" | bc)
