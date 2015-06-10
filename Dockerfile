FROM openshift/python-33-centos7
USER default
EXPOSE 8080
run yum -y install python-gunicorn.noarch  ;yum clean all
COPY . /opt/openshift/src/
CMD ["./run.sh"]
