# Basil and Pesto Docker Images

Docker containers for [Basil](https://github.com/the-open-university/basil) and its own UI, [Pesto](https://github.com/the-open-university/pesto).

Requirements:

* Docker 1.10+

* Docker Compose 1.6+

## Run Basil + Pesto

### Docker native on Linux
To startup Basil with Pesto UI, clone this GitHub project, then run the following command:

```
docker-compose up
```


### Docker through Docker Machine (Windows and Mac OSX)

After cloning this GitHub project, edit `docker-compose.yml` file, then substitute the value of the `BASIL_HOST` argument from `localhost` to the output of `docker-machine ip` command. For instance:

```
version: '2'
services:
  pesto:
    build:
      context: ./pesto
      args:
        BASIL_HOST: 192.168.99.100
    links: 
      - basil  
      
...
```

Finally, run the following command:

```
docker-compose up
```

Basil will be available at `http://<docker-machine-ip>:8080/basil`.
Instead, Pesto will be accessible at `http://<docker-machine-ip>/app`.

