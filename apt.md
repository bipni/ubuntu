## Install A Package
```
sudo apt install <package name>
```

## Uninstall A Package and It's Configuration File
```
sudo apt remove <package name>
```

## Uninstall A Package, But Keep the Configuration File
```
sudo apt purge <package name>
```

## After Uninstall A Package, Remove any Leftover Dependencies
```
sudo apt autoremove
```
## Get All Packages
```
apt list --installed
```

## Get All Packages with Name Filter
```
apt list --installed 'a*'
```

## Refresh All Packages Repository
```
sudo apt update
```

## Get Packages Update List
```
apt list --upgradable
```

## Upgrade All Packages
```
sudo apt upgrade
```