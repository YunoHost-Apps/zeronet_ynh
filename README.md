# ZeroNet for YunoHost

[![Integration level](https://dash.yunohost.org/integration/zeronet.svg)](https://dash.yunohost.org/appci/app/zeronet) ![](https://ci-apps.yunohost.org/ci/badges/zeronet.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/zeronet.maintain.svg)  
[![Install ZeroNet with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=zeronet)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install ZeroNet quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
ZeroNet allows you to publish static and dynamic websites on a distributed web platform using Bitcoin crypto and the BitTorrent network.

**Shipped version:** 2021-01-25

## Screenshots

![](https://camo.githubusercontent.com/7b79b9725df29fa5403ba490ff9870e0464a00e106bad5536867602625ca94cc/68747470733a2f2f692e696d6775722e636f6d2f4836304f4148592e706e67)


## Install instructions
- This app can only be installed on root path, i.e you will need to use a dedicated domain name, e.g.`zeronet.domain.tld`.
- You can setup Tor which has to be done manually till its implimented in the app.[how to use zeronet with Tor](https://zeronet.readthedocs.io/en/latest/faq/#how-to-use-zeronet-with-tor)


## Multiple Instances
- Installing multiple instances of the app is *experimental*. Internally each instance will use an unique port for both for ZeroNet UserInterface and FileServer. However, the tracker will see all instances as one peer, as they all use one and the same external IP address. But you try it and explain your user case.
- A solution that hasn't been confirmed yet is to use Tor instead. Each instance should then have a unique external address.

## Documentation

 * Official documentation: https://zeronet.io/docs/site_development/getting_started/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

Are LDAP and HTTP auth supported? No

#### Android app (Still in beta)

[Android app](https://github.com/canewsin/zeronet_mobile)

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/zeronet%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/zeronet/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/zeronet%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/zeronet/)

## Limitations

* App can not be used inside SSO. See [here](https://github.com/HelloZeroNet/ZeroNet/issues/2541) and [here](https://github.com/YunoHost/issues/issues/1580).

## Additional information

* Other info you would like to add about this Zeronet.

**More info on the documentation page:**
https://yunohost.org/packaging_apps


## Links

 * Report a bug: https://github.com/YunoHost-Apps/zeronet_ynh/issues
 * App website: https://zeronet.io/
 * Upstream app repository: https://github.com/HelloZeroNet/ZeroNet
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing --debug
or
sudo yunohost app upgrade zeronet -u https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing --debug
```
