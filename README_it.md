<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# ZeroNet per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/zeronet.svg)](https://dash.yunohost.org/appci/app/zeronet) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/zeronet.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/zeronet.maintain.svg)

[![Installa ZeroNet con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=zeronet)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare ZeroNet su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

ZeroNet allows you to publish static and dynamic websites on a distributed web platform using Bitcoin crypto and the BitTorrent network.


**Versione pubblicata:** 2021.01.25~ynh1

## Screenshot

![Screenshot di ZeroNet](./doc/screenshots/screenshot.png)

## Attenzione/informazioni importanti

## Install instructions
- This app can only be installed on root path, i.e you will need to use a dedicated domain name, e.g.`zeronet.domain.tld`.
- You can setup Tor which has to be done manually till its implimented in the app.[how to use zeronet with Tor](https://zeronet.readthedocs.io/en/latest/faq/#how-to-use-zeronet-with-tor)

## Multiple Instances
- Installing multiple instances of the app is *experimental*. Internally each instance will use an unique port for both for ZeroNet UserInterface and FileServer. However, the tracker will see all instances as one peer, as they all use one and the same external IP address. But you try it and explain your user case.
- A solution that hasn't been confirmed yet is to use Tor instead. Each instance should then have a unique external address.

## Limitations

* App can not be used inside SSO. See [here](https://github.com/HelloZeroNet/ZeroNet/issues/2541) and [here](https://github.com/YunoHost/issues/issues/1580).

## Documentazione e risorse

- Sito web ufficiale dell’app: <https://zeronet.io>
- Documentazione ufficiale per gli amministratori: <https://zeronet.io/docs/>
- Repository upstream del codice dell’app: <https://github.com/HelloZeroNet/ZeroNet>
- Store di YunoHost: <https://apps.yunohost.org/app/zeronet>
- Segnala un problema: <https://github.com/YunoHost-Apps/zeronet_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing --debug
o
sudo yunohost app upgrade zeronet -u https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
