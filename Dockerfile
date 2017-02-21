# Version 0.1
# 2017-02-21 Build centos with python and myflask app
#
FROM centos:6.8
MAINTAINER Howard Ainley "howard.ainley@gmail.com"
ENV LANG en_US.utf8
ENV FLASK_APP /usr/src/flask/myapp.py
WORKDIR /root

RUN yum install -y epel-release
RUN yum install -y python34
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN /usr/bin/python3.4 get-pip.py 
RUN pip install Flask
#
RUN yum install -y nc.x86_64
#
RUN mkdir -p /usr/src/flask
ADD .bashrc /root/
ADD myapp.py /usr/src/flask/
ADD myFlask.sh /usr/src/flask/
RUN chmod u+x /usr/src/flask/myapp.py
RUN chmod u+x /usr/src/flask/myFlask.sh
#
EXPOSE 5000
ENTRYPOINT /usr/src/flask/myFlask.sh
