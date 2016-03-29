# Basil and Pesto Docker Images

Docker containers for [Basil](https://github.com/the-open-university/basil) and its own UI, [Pesto](https://github.com/the-open-university/pesto).

Requirements:

* Docker 1.10+

* Docker Compose 1.6+

## Run Basil + Pesto

To startup Basil with Pesto UI, clone this GitHub project, then run the following command:

```
docker-compose up
```

Basil will be available at `http://<docker-machine-ip>:8080/basil`.
Instead, Pesto will be accessible at `http://<docker-machine-ip>/app`.