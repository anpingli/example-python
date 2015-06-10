FROM openshift/python-33-centos7
USER root
run  yum -y install python-gunicorn.noarch ;yum clean all
COPY get-pip.py /tmp
run  python /tmp/get-pip.py
USER default
EXPOSE 8080
COPY . /opt/openshift/src/
CMD ["./run.sh"]
