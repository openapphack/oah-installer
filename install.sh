OAH_VERSION=0.0.1a1
OAH_INSTALLER_TMP_FOLDER=/tmp/oah-installer
OAH_SHELL_GITURL="https://github.com/openapphack/openapphack-shell.git"
OAH_SHELL_REPO=openapphack-shell
#CHECK GIT



mkdir -p ${OAH_INSTALLER_TMP_FOLDER}
cd /tmp/oah-installer


git clone ${OAH_SHELL_GITURL}
cd ${OAH_SHELL_REPO}
./install.sh
CHECK_OAH_INSTALL ${OAH_VERSION}
rmdir ${OAH_INSTALLER_TMP_FOLDER}

function CHECK_OAH_INSTALL
{
  version=$1
  echo $(OAH ) | grep ${version}
}
