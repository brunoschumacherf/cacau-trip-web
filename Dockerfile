
# syntax=docker/dockerfile:1

FROM ruby:3.4-slim

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential \
    git \
    libpq-dev \
    postgresql-client \
    curl \
    libyaml-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN gem install rails -v "~> 8.0"

EXPOSE 3000

CMD ["bash"]
