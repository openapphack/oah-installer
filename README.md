# OAH-installer

#### This project serves up the install scripts hosted on

```
https://openapphack.github.io/oah-installer/

```

To install OAH Shell using installer run the following on you *nix machine

```

curl -s https://openapphack.github.io/oah-installer/install.sh | bash

```


# Steps to Update oah-installer

- Build Resources
```
ansible-playbook build.yml

```


# Make a new oah release

run

```
ansible-playbook release.yml

```
