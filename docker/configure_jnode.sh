#! /bin/sh
sed -i.bak s/server.com/$XMPP_DOMAIN/g /opt/jinglenodes/etc/app.config
sed -i.bak s/8889/$XMPP_PORT/g /opt/jinglenodes/etc/app.config
sed -i.bak s/secret/$XMPP_PASS/g /opt/jinglenodes/etc/app.config
sed -i.bak s/88.88.88.88/$PUBLIC_IP/g /opt/jinglenodes/etc/app.config

