#! /bin/sh
/opt/jinglenodes/bin/configure_jnode.sh 
/opt/jinglenodes/bin/jnode start && tail -F /opt/jinglenodes/log/erlang.log /opt/jinglenodes/log/info.log /opt/jinglenodes/log/run_erl.log /opt/jinglenodes/logs/crash.log
