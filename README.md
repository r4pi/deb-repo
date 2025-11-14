# r4pi.org deb repo config

Most of the process for managing this repo came from the
[official Debian docs](https://wiki.debian.org/DebianRepository/SetupWithReprepro)

There's info on creating a keypair
[on the gpg site](https://www.gnupg.org/gph/en/manual/c14.html)


## Add a deb to the repo

This example uses the "bullseye" distribution.

```
cd bullseye
reprepro includedeb bullseye /tmp/output/raspbian-bullseye/r-release_4.0.4-2_armhf.deb
```


## Sync the repo

For each repo that needs to be published:

```
cd bullseye
../repo-sync.sh
```


## ToDo

- [ ] create a "testing" channel?


## General key management

Some useful commands:

```
gpg --list-keys
gpg --edit-key <KEY_ID>
```

