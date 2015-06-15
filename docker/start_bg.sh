#! /bin/sh
/opt/jinglenodes/bin/configure_jnode.sh 
/opt/jinglenodes/bin/jnode start && tail -F /opt/jinglenodes/etc/vm.args
