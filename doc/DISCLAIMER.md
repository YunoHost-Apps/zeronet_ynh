## Install instructions
- This app can only be installed on root path, i.e you will need to use a dedicated domain name, e.g.`zeronet.domain.tld`.
- You can setup Tor which has to be done manually till its implimented in the app.[how to use zeronet with Tor](https://zeronet.readthedocs.io/en/latest/faq/#how-to-use-zeronet-with-tor)

## Multiple Instances
- Installing multiple instances of the app is *experimental*. Internally each instance will use an unique port for both for ZeroNet UserInterface and FileServer. However, the tracker will see all instances as one peer, as they all use one and the same external IP address. But you try it and explain your user case.
- A solution that hasn't been confirmed yet is to use Tor instead. Each instance should then have a unique external address.

## Limitations

* App can not be used inside SSO. See [here](https://github.com/HelloZeroNet/ZeroNet/issues/2541) and [here](https://github.com/YunoHost/issues/issues/1580).
