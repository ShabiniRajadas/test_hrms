FROM ubuntu:12.04

MAINTAINER ShabiniRajadas shabini@gmail.com

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list

RUN echo 'Let me try some cool stuffs'	

#MySql
#RUN apt-get install -y -q mysql-server
#RUN apt-get install -y -q mysql-client libmysqlclient-dev

# bundler
#RUN gem install bundler

# Ruby 1.9.3 and build dependencies
RUN apt-get install -y -q ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev

# Rails
RUN gem install rails --no-ri --no-rdoc

# the Rails application will live in the /rails directory
# copy the Rails app
ADD	shabini/hrms /rails

# copy the start,setup script
ADD scripts/start /start
#ADD scripts/setup /setup

RUN cd /rails;bundle install;rake db:create;rake db:migrate

CMD /start

