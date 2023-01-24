FROM ubuntu:22.04
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get -y install ruby build-essential ruby-dev ruby-all-dev
RUN gem install bundler
WORKDIR /var/src
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .

# run like this:
# docker run -v "$PWD:/var/src" jekyll gem install jekyll
