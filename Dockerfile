from ubuntu:14.04

RUN mkdir -p /screener
COPY . /screener/
WORKDIR /screener/

RUN cd /screener/ && apt-get update
RUN apt-get install -y build-essential
RUN apt-get remove -y ruby
RUN apt-get install -y ruby1.9.1-full
RUN gem install /screener/flatten/screener-0.0.1.gem 
RUN gem install levenshtein
RUN gem install Text
RUN gem install /screener/topn/topn-0.0.1.gem

