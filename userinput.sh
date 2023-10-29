# user input

read -n 1 -p "Delete original shitty directory ? (y/N) " shalldelete
read -p "Press key to see processes" key

# Input of Summary is required
summary=
while [ -z "$summary" ]; do
  read -p "Object : " -e summary
done
