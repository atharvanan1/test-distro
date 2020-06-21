test-distro
===========

Test distro for exercising the autobuilder and metdata layer changes.

# Security Options

The default build requires a proprietary signing setup for secure boot
and signing.  To remove these requirements, specify:

`SECURITY_OPTIONS=""` in your environment or local.conf

# Mender Hack Build

Building a mender supported build:

```
git checkout --track origin/master+wip-mender
git submodule update --init
source setup-env
```

In your local.conf
```
SECURITY_OPTIONS = ""
MACHINE ?= "jetson-tx2-cboot"
DISTRO ?= "testdistro-mender"
```
