#HOW to run the image

## With default configurations
docker run -d reg.cp.ngti.nl:5000/jinglenodes:1.0.5

## With custom configurations and link to Ejabberd
docker run -d --env-file prod.env --name jnode2 --link hc:ejabberd.local reg.cp.ngti.nl:5000/jinglenodes:1.0.5
