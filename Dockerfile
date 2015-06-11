FROM openshift/python-33-centos7
USER default
EXPOSE 8080
COPY . /opt/openshift/src/
RUN /opt/openshift/src/.sti/bin/assemble
CMD ["/opt/openshift/src/.sti/bin/run"]
