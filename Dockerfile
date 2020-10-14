# This does not work, I guess because it uses sam cli 1.6.2
FROM lambci/lambda:build-ruby2.5

# Uncomment below to successfully build the app. (This works because sam-cli is 1.4.0 into the image)
# FROM lambci/lambda:20201004-build-ruby2.5

WORKDIR /ruby-project-example

RUN yum install -y postgresql postgresql-devel
RUN bundle config set with "development test"

RUN bundle config set path vendor/bundle

COPY .env .env

COPY . .

RUN bundle install

CMD [ "/bin/bash" ]
