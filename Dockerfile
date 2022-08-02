FROM ruby:slim-buster

RUN gem install sinatra 
RUN gem install webrick
RUN apt-get update
RUN apt-get install -y vim
COPY app.rb /app.rb
CMD ["ruby", "app.rb", "-p", "3000", "-o", "0.0.0.0"]
