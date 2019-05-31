FROM ruby:2.5.5

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    xvfb \
    qt5-default \
    libqt5webkit5-dev \
    gstreamer1.0-plugins-base \
    gstreamer1.0-tools \
    gstreamer1.0-x \
    imagemagick \
    graphviz \
    postgresql-client \
    iceweasel

RUN mkdir -p /weather-challenge

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN gem install bundler
RUN bundle install
RUN gem install bundler-audit

WORKDIR /weather-challenge
ADD . /weather-challenge

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Brazil/East /etc/localtime
