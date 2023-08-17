source $MAC_SETUP/.roam/.bash_exports
source $MAC_SETUP/.roam/.bash_aliases

# To avoid hangs, check if logged into Keybase before attempting to
# decrypt secrets. Prints "▶ ERROR logged out" if logged out.
keybase whoami > /dev/null
test $? = 0 && source $MAC_SETUP/.roam/.bash_secrets

