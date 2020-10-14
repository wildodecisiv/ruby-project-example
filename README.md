# Ruby Project Example To Debug Building Issue Using sam-cli 1.6.2

How to use this project to debug the application

1. Check dockerfile
2. Dockerfile currently uses the image `lambci/lambda:build-ruby2.5`
3. Open your terminal and run
   ```
   docker-compose build
   docker-compose run --rm app /bin/bash
   # Once inside docker container
   aws configure (set properly the credentials)
   sam validate -t template.yaml
   sam build -t template.yaml --debug
   ```
4. I received the error described in the ticket

Note: I guess that is because the docker image uses sam-cli 1.6.2


How to make it work?
1. Comment line 2 of the Dockerfile
2. Uncomment line 4 of the Dockerfile
3. Open a new terminal and run
  ```
   docker-compose build
   docker-compose run --rm app /bin/bash
   # Once inside docker container
   aws configure (set properly the credentials)
   sam validate -t template.yaml
   sam build -t template.yaml --debug
   ```
4. This builds succcessfully 
Note: I guess that is because the docker image uses sam-cli 1.4.0