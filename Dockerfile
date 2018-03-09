FROM docker.io/openshift/python-27-centos7:latest

MAINTAINER Carlos M. Arias

RUN git clone https://github.com/grantjenks/free-python-games.git
RUN cd free-python-games/
RUN python3 -m pip install freegames 

EXPOSE 80

CMD["python3", "-m", "freegames.snake"]
