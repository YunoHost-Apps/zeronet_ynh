<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# ZeroNet para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/zeronet.svg)](https://dash.yunohost.org/appci/app/zeronet) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/zeronet.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/zeronet.maintain.svg)

[![Instalar ZeroNet con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=zeronet)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar ZeroNet de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

ZeroNet allows you to publish static and dynamic websites on a distributed web platform using Bitcoin crypto and the BitTorrent network.


**Versión proporcionada:** 2021.01.25~ynh1

## Capturas de pantalla

![Captura de pantalla de ZeroNet](./doc/screenshots/screenshot.png)

## Avisos / información importante

## Install instructions
- This app can only be installed on root path, i.e you will need to use a dedicated domain name, e.g.`zeronet.domain.tld`.
- You can setup Tor which has to be done manually till its implimented in the app.[how to use zeronet with Tor](https://zeronet.readthedocs.io/en/latest/faq/#how-to-use-zeronet-with-tor)

## Multiple Instances
- Installing multiple instances of the app is *experimental*. Internally each instance will use an unique port for both for ZeroNet UserInterface and FileServer. However, the tracker will see all instances as one peer, as they all use one and the same external IP address. But you try it and explain your user case.
- A solution that hasn't been confirmed yet is to use Tor instead. Each instance should then have a unique external address.

## Limitations

* App can not be used inside SSO. See [here](https://github.com/HelloZeroNet/ZeroNet/issues/2541) and [here](https://github.com/YunoHost/issues/issues/1580).

## Documentación e recursos

- Web oficial da app: <https://zeronet.io>
- Documentación oficial para admin: <https://zeronet.io/docs/>
- Repositorio de orixe do código: <https://github.com/HelloZeroNet/ZeroNet>
- Tenda YunoHost: <https://apps.yunohost.org/app/zeronet>
- Informar dun problema: <https://github.com/YunoHost-Apps/zeronet_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing --debug
ou
sudo yunohost app upgrade zeronet -u https://github.com/YunoHost-Apps/zeronet_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
