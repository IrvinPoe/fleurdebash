MYRC=/root/.config/alexis
OPTPARSE_LIB=/usr/local/lib/optparse.bash

# Source the optparse.bash file -----------------------------------------------
if [ ! -r $OPTPARSE_LIB ]; then
    OPTPARSE_LIB=$MYRC/lib/optparse.bash
fi

if [ ! -r $OPTPARSE_LIB ]; then
  exit
fi
# OPTPARSE TEMPLATE
source $OPTPARSE_LIB
optparse.define short=h long=host desc="Target host" variable=host 
optparse.define short=d long=debug desc="Moar output" variable=debug value=true default=false
source $( optparse.build )
