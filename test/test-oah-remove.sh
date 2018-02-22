source "$OAH_ROOT/.oah/bin/oah-init.sh"
env_to_be_removed=$1
echo "About to remove => $env_to_be_removed "
oah remove $env_to_be_removed
