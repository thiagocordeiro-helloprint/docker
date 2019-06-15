# HelloPrint coding challenge
This project implements a simple reset password application 

### Setting-up
This project requires [docker](https://www.docker.com/get-started) and [docker-compose](https://docs.docker.com/compose/overview/)

To run the project, start cloning the first project, go into the folder and run build script

    git clone https://github.com/thiagocordeiro-helloprint/docker.git helloprint
    
    cd helloprint
    
    ./build.sh

### Running login page
As soon as build get finished, you'll be able to access the application via browser

[http://localhost:8008/](http://localhost:8008/)

### Running worker

    docker exec fpm-auth bin/console password:reset
to stop worker simply press `Ctrl+C`

### Stopping project

    docker-compose down
