FROM centos:latest
MAINTAINER Tom Hill <tom@clockworkcubed.com>
ADD build.cmd /
RUN yum -y install supermin5
VOLUME /data
CMD /build.cmd
