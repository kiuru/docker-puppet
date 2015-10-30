FROM ubuntu:14.04
MAINTAINER Niko Kiuru "niko@kiuru.net"

RUN locale-gen en_US.UTF-8
RUN echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc
RUN export LC_ALL=en_US.UTF-8

RUN apt-get update && apt-get -y install ruby ruby-dev make git
RUN gem install --no-ri --no-rdoc puppet librarian-puppet deep_merge
