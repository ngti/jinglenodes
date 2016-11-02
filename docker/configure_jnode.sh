#! /bin/sh
sed -i.bak s/server.com/$JN_XMPP_DOMAIN/g /opt/jinglenodes/etc/app.config
sed -i.bak s/8889/$JN_XMPP_PORT/g /opt/jinglenodes/etc/app.config
sed -i.bak s/secret/$JN_XMPP_PASS/g /opt/jinglenodes/etc/app.config
sed -i.bak s/88.88.88.88/$JN_PUBLIC_IP/g /opt/jinglenodes/etc/app.config
sed -i.bak s/ejabberd.local/$JN_XMPP_HOST/g /opt/jinglenodes/etc/app.config

