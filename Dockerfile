FROM ruby:2.3

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

# Set timezone
RUN echo "America/Sao_Paulo" > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update -y && \
 apt-get install -y unzip xvfb \
 qt5-default libqt5webkit5-dev \
 gstreamer1.0-plugins-base \
 gstreamer1.0-tools gstreamer1.0-x \
 freetds-dev \
 libnss3 libxi6 libgconf-2-4

WORKDIR /usr/src/app/

# install required gem files for Capybara
COPY ./Gemfile /usr/src/app/
RUN gem install bundler
RUN bundle install