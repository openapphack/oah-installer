source "$OAH_ROOT/.oah/bin/oah-init.sh"
env_to_be_installed=$1
echo "About to install => $env_to_be_installed "
oah install -v $env_to_be_installed
