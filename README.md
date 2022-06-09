# GCP shell

Google Cloud Shell with zsh and tools. It comes with Powerline10k: https://github.com/romkatv/powerlevel10k

## Initial installation

### Requirements

#### Font installation and setup

You will need the font _MesloLGS NF_. Download them for later installation:

* [MesloLGS NF Regular](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
* [MesloLGS NF Bold](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
* [MesloLGS NF Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
* [MesloLGS NF Bold Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Depending on your operating system, installing a font can be done with right-clicking + install
or "opening" the font file with your file manager (Finder, Explorer, Nautilus etc.).

##### Select font as monospace
##### Using local terminal

### Installation process

In your shell, just issue

```shell
curl "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/install.sh" | /bin/bash
```

and follow possible instructions as printed by the script.


## Uninstallation

In GCP shell, check for any custom files (including hidden files), since we will
erase them. If you are sure that you have no important and personal data, remove
your entire home folder:

```shell
sudo rm -rf $HOME
```

Then, restart the underlying virtual machine by clicking _More &rarr; Restart_:

![Restart shell](./doc/restart-shell.png "Restart shell")

More on resetting your GCP shell: https://cloud.google.com/shell/docs/resetting-cloud-shell
