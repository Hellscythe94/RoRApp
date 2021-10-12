#Used Verison of Ruby
FROM ruby:2.6.3

ARG redisurl
ARG postgreurl
ARG port
ARG railsenv

ENV REDIS_URL=$redisurl
ENV DATABASE_URL=$postgreurl
ENV PORT=$port
ENV RAILS_ENV=$railsenv

#Update and install node
RUN apt update ; apt install -y nodejs

#Create and then go into the dir for the app
#RUN mkfdir -p /rorapp
WORKDIR /rorapp

#Install all required gems
COPY Gemfile Gemfile.lock /rorapp/
RUN bundle install

#Copy the actual app
COPY . /rorapp