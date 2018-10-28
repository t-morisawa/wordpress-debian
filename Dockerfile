FROM debian:9.5

RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get -y update
RUN apt-get -y --allow-unauthenticated install ansible
RUN apt-get -y install curl vim less sudo

EXPOSE 80
EXPOSE 443

COPY . /hoge
CMD ansible-playbook -i /hoge/hosts /hoge/site.yml --connection=local && tail -f /dev/null
