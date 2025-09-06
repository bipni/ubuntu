# `apt` Package Manager Commands

### Install A Package

```bash
sudo apt install <package name>
```

### Uninstall A Package and It's Configuration File

```bash
sudo apt remove <package name>
```

### Uninstall A Package, But Keep the Configuration File

```bash
sudo apt purge <package name>
```

### After Uninstall A Package, Remove any Leftover Dependencies

```bash
sudo apt autoremove
```

### Get All Installed Packages

```bash
apt list --installed
```

### Get All Installed Packages with Name Filter

```bash
apt list --installed 'a*'
```

### Refresh All Packages Repository

```bash
sudo apt update
```

### Get Installed Packages Upgradable List

```bash
apt list --upgradable
```

### Upgrade All Installed Packages

```
sudo apt upgrade
```
