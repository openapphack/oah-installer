source ./prepare-for-testing.sh
export OAH_ROOT="$OAH_DEV_SRC_FOLDER/oah-installer/test"
# TODO unset OAH_SRC to test installing zip from oah-shell release location
export OAH_SRC="$OAH_ROOT/tmp/oah-installer/oah-shell/"
../install.sh
./test-oah-init.sh
./test-oah-list.sh
./test-oah-install.sh oah-drupal8-vm
./test-oah-remove.sh oah-drupal8-vm
