# ZeroNet package for YunoHost
[![Integration level](https://dash.yunohost.org/integration/zeronet.svg)](https://dash.yunohost.org/appci/app/zeronet)  
[![Install ZeroNet with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=zeronet)

- [ZeroNet project](https://github.com/HelloZeroNet/ZeroNet)

## Install
- This app can only be installed on root path, i.e. you will need to use a dedicated domain name, e.g.`zeronet.domain.tld`.
- The app is installed in private mode only so unauthenticated users can not temper with your content.
- If you want to be a proper ZeroNet peer (serving your and other's content) you will want to open TCP port 15441 in your firewall and make sure requests to this port reach your instance [do i need to have a port opened](https://zeronet.readthedocs.io/en/latest/faq/#do-i-need-to-have-a-port-opened)
- Alternatively you can setup Tor which has to be done manually [how to use zeronet with Tor](https://zeronet.readthedocs.io/en/latest/faq/#how-to-use-zeronet-with-tor)

## Multiple Instances
- Installing multiple instances of the app is *experimental*. Internally each instance it will use a unique port for both for ZeroNet UserInterface and FileServer. However, the tracker will see all instances as one peer, as they all use one and the same external IP address.
- A solution that hasn't been confirmed yet is to use Tor instead. Each instance should then have a unique external address.

## Hint
- Use at your own risk :-)
