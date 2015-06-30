#! /bin/sh
sed -i.bak s/server.com/$JN_XMPP_DOMAIN/g /opt/jinglenodes/etc/app.config
sed -i.bak s/8889/$JN_XMPP_PORT/g /opt/jinglenodes/etc/app.config
sed -i.bak s/secret/$JN_XMPP_PASS/g /opt/jinglenodes/etc/app.config
sed -i.bak s/88.88.88.88/$JN_PUBLIC_IP/g /opt/jinglenodes/etc/app.config
sed -i.bak s/10000/$JN_MIN_PORT/g /opt/jinglenodes/etc/app.config
sed -i.bak s/10500/$JN_MAX_PORT/g /opt/jinglenodes/etc/app.config
