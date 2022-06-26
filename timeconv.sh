################################################
#!/usr/bin/bash

# Author: Nirjas Jakilim

# Motive: Converting script execution time according to their timezone.

# Usage: at first source it using source timeconv.sh then us like this ./timeconv.sh && functionname for example: ./timeconv.sh && printBDtime

# Or you can also use this script in your by sourcing this script insdie your script by source ./timeconv.sh

################################################

# This function will print out the bd time

printBDtime(){
        echo "Script executed at (BD time) : $(TZ="Asia/Dhaka" date "+%A, %d %b - %r")"
}

# This function will output US New York time upon calling

printUKtime(){
        echo "Script executed at (UK time) : $(TZ="Europe/London" date "+%A, %d %b - %r")"
}

# This function will will output us time upon calling

printNYtime(){
        echo "Script executed at (NY time) : $(TZ="US/Eastern" date "+%A, %d %b - %r")"
}