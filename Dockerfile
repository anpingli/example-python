FROM openshift/python-33-rhel7
USER default
EXPOSE 8080
COPY . /opt/openshift/src/
CMD ["./run.sh"]
