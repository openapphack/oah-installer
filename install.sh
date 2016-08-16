OAH_VERSION=0.0.1a1
OAH_INSTALLER_TMP_FOLDER=/tmp/oah-installer
OAH_SHELL_GITURL="https://github.com/openapphack/oah-shell.git"
OAH_SHELL_REPO=openapphack-shell
#CHECK GIT

echo "Looking for git..."
if [ -z $(which git) ]; then
	echo "Not found."
	echo "======================================================================================================"
	echo " Please install git on your system using your favourite package manager."
	echo ""
	echo " Restart after installing git."
	echo "======================================================================================================"
	echo ""
	exit 0
fi


mkdir -p ${OAH_INSTALLER_TMP_FOLDER}
cd ${OAH_INSTALLER_TMP_FOLDER}


git clone ${OAH_SHELL_GITURL}
cd ${OAH_SHELL_REPO}
./install.sh
CHECK_OAH_INSTALL ${OAH_VERSION}
rmdir ${OAH_INSTALLER_TMP_FOLDER}

function CHECK_OAH_INSTALL
{
  version=$1
  echo $(oah ) | grep ${version}
}
