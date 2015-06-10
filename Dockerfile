FROM openshift/python-33-centos7
run  yum -y install python-gunicorn.noarch ; yum clean all
USER default
EXPOSE 8080
COPY . /opt/openshift/src/
CMD ["./run.sh"]
