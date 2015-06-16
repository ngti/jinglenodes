FROM ubuntu:latest
ENV JENKINS_USER=ahmed@ngti.nl
ENV JENKINS_TOKEN=00451264e2d21536c0a6088d727855af
ENV BUILD_VER=master
RUN apt-get update && apt-get install -y wget
RUN wget --auth-no-challenge --http-user=$JENKINS_USER --http-password=$JENKINS_TOKEN https://repo.ngti.nl/jenkins/job/jinglenodes-dev/lastSuccessfulBuild/artifact/builds/jinglenodes-${BUILD_VER}.tar.gz
RUN tar xf jinglenodes-${BUILD_VER}.tar.gz
RUN mv rel/jinglenodes /opt/
ADD configure_jnode.sh /opt/jinglenodes/bin/
ADD start_bg.sh /opt/jinglenodes/bin/
RUN chmod +x /opt/jinglenodes/bin/start_bg.sh
RUN chmod +x /opt/jinglenodes/bin/configure_jnode.sh
CMD ["/opt/jinglenodes/bin/start_bg.sh"]

EXPOSE 10000-50000
