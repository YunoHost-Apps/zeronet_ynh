# ZeroNet for YunoHost
[![Integration level](https://dash.yunohost.org/integration/zeronet.svg)](https://dash.yunohost.org/appci/app/zeronet) ![](https://ci-apps.yunohost.org/ci/badges/zeronet.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/zeronet.maintain.svg)  
[![Install ZeroNet with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=zeronet)

## Install
- This app can only be installed on root path, i.e you will need to use a dedicated domain name, e.g.`zeronet.domain.tld`.
- The app is installed in private mode only so unauthenticated users can not temper with your content.
- If you want to be a proper ZeroNet peer (serving your and other's content) you will want to open TCP port 15441 in your firewall and make sure requests to this port reach your instance [do i need to have a port opened](https://zeronet.readthedocs.io/en/latest/faq/#do-i-need-to-have-a-port-opened)
- Alternatively you can setup Tor which has to be done manually [how to use zeronet with Tor](https://zeronet.readthedocs.io/en/latest/faq/#how-to-use-zeronet-with-tor)

## Multiple Instances
- Installing multiple instances of the app is *experimental*. Internally each instance it will use a unique port for both for ZeroNet UserInterface and FileServer. However, the tracker will see all instances as one peer, as they all use one and the same external IP address.
- A solution that hasn't been confirmed yet is to use Tor instead. Each instance should then have a unique external address.

## Hint
- Use at your own risk :-)

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
