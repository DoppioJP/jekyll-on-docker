FROM ruby:latest

# RUN apt-get update && apt-get install -y \
  # ruby \
  # ruby-dev \
  # build-essential \
  # libxml2-dev \
  # libxslt1-dev \
  # zlib1g-dev \
  # libsqlite3-dev \
  # nodejs


ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile $APP_HOME
ADD Gemfile.lock $APP_HOME

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

RUN gem install bundler

# RUN bundle install

ADD . $APP_HOME

EXPOSE 4000
RUN cd $APP_HOME

