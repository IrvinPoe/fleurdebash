

# Variables substitutions

# Split a string
${origine:0:3}

# Strip portion of string at end of string
# egzample: "gagnerpogner.sh" -> "gagnerpognon"
"${fn%.sh}"

# Strip portion at beginning of string 
"${fn#args-}"
