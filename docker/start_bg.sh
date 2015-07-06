#! /bin/sh
/opt/jinglenodes/bin/configure_jnode.sh 
/opt/jinglenodes/bin/jnode start && tail -F /opt/jinglenodes/log/erlang.log.1 /opt/jinglenodes/log/erlang.log.2 /opt/jinglenodes/log/erlang.log.3 /opt/jinglenodes/log/erlang.log.4 /opt/jinglenodes/log/erlang.log.5 /opt/jinglenodes/log/info.log /opt/jinglenodes/log/run_erl.log /opt/jinglenodes/logs/crash.log
