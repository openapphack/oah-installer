OAH_VERSION=0.0.1-a1
OAH_INSTALLER_TMP_FOLDER=/tmp/oah-installer

OAH_SHELL_GITURL="https://github.com/openapphack/oah-shell.git"
OAH_SHELL_REPO=oah-shell
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

function CHECK_OAH_INSTALL
{
	version=$1
	echo $(oah ) | grep ${version}
}


echo $(CHECK_OAH_INSTALL ${OAH_VERSION}) > OAH_VERSION_FOUND

echo $OAH_VERSION_FOUND
#check if oah already installed
if [$OAH_VERSION_FOUND == ${OAH_VERSION}] ; then

 echo "Nothing to do current version found is the latest version!!"
 exit 0

fi

mkdir -p ${OAH_INSTALLER_TMP_FOLDER}
cd ${OAH_INSTALLER_TMP_FOLDER}


git clone ${OAH_SHELL_GITURL}
cd ${OAH_SHELL_REPO}
chmod +x ./src/bash/install.sh
./src/bash/install.sh
rmdir ${OAH_INSTALLER_TMP_FOLDER}
