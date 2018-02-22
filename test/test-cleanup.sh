source ./prepare-for-testing.sh
export OAH_DIR="$OAH_DEV_SRC_FOLDER/oah-installer/test/.oah"
if [ -n $OAH_DIR ]; then
 echo " Removing $OAH_DEV_SRC_FOLDER/oah-installer/test/tmp "
 rm -rf "$OAH_DEV_SRC_FOLDER/oah-installer/test/tmp"
 echo " Removing $OAH_DIR "
 rm -rf $OAH_DIR
fi
