function oah_export {
  oah_gobal_var=$1
  oah_gobal_val=$2
  if [ -z $export_var ]; then
    export $oah_gobal_var=$oah_gobal_val
  fi
}

oah_export OAH_NAMESPACE ${OAH_NAMESPACE:=openapphack}
oah_export OAH_ROOT ${OAH_ROOT:="$HOME"}
oah_export OAH_DIR "$OAH_ROOT/.oah"
oah_export OAH_HOST_SERVER ${OAH_HOST_SERVER:=https://raw.githubusercontent.com}

# Global variables
oah_export OAH_INSTALLER_SERVICE "${OAH_HOST_SERVER}/${OAH_NAMESPACE}/oah-installer/master"
oah_export OAH_GITHUB_URL http://github.com/$OAH_NAMESPACE

#OAH meta data service for validated OAH environments

oah_export OAH_ENVS_INFO_SERVICE "${OAH_INSTALLER_SERVICE}/envsinfo/candidates.txt"
oah_export OAH_BROADCAST_SERVICE "${OAH_INSTALLER_SERVICE}/broadcast/"
oah_export OAH_VERSION_SERVICE "$OAH_INSTALLER_SERVICE/VERSION"
oah_export OAH_VERSION $(cat $OAH_DIR/var/version)
oah_export OAH_PLATFORM $(uname)
oah_export OAH_DIR "$HOME/.oah"

export | grep OAH
