# Spark Local Development Sandbox
This is a self-contained spark development environment designed to provide maximum enjoyment in data engineering. It includes the following components:
- [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/getting_started/overview.html)
- [PySpark](https://spark.apache.org/docs/latest/api/python/index.html)
- [pandas](https://pandas.pydata.org/docs/index.html)
- [PyArrow](https://arrow.apache.org/docs/python/index.html)


The local working directory is `/spark-app` and all files in this directory will be available to the Jupyter Lab environment. Once the environment is running, the following web services will become accessbile: 
- Jupyter Lab - http://localhost:8888
- Spark - 

## Setup

### Run w/ docker compose
```shell
docker-compose build
docker-compose up -d
docker-compose down
```

### Run w/o docker compose
```shell
docker build -t spark-base .
docker run --rm --name spark-base -p 8888:8888 -it spark-base
docker stop spark-base
```


## References
- https://hub.docker.com/_/spark
- https://stackoverflow.com/a/61353480