FROM erlang:17.5

ENV JN_XMPP_DOMAIN=my-hc.nl
ENV JN_XMPP_PORT=11112
ENV JN_XMPP_PASS=relaypass
ENV JN_XMPP_HOST=ejabberd.host
ENV JN_PUBLIC_IP=130.117.76.198
RUN apt-get update && apt-get install -y wget libidn11
ADD . /build/jinglenodes
RUN cd /build/jinglenodes && ./build.sh && mv rel/jinglenodes /opt/
ADD docker/configure_jnode.sh /opt/jinglenodes/bin/
ADD docker/start_bg.sh /opt/jinglenodes/bin/
RUN chmod +x /opt/jinglenodes/bin/start_bg.sh
RUN chmod +x /opt/jinglenodes/bin/configure_jnode.sh
CMD ["/opt/jinglenodes/bin/start_bg.sh"]

EXPOSE 4000-5000
