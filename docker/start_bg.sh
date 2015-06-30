#! /bin/sh
/opt/jinglenodes/bin/configure_jnode.sh 
/opt/jinglenodes/bin/jnode start && tail -F /opt/jinglenodes/logs/erlang.log /opt/jinglenodes/logs/info.log /opt/jinglenodes/logs/run_erl.log /opt/jinglenodes/logs/crash.log
