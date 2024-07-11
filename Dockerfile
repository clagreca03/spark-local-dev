FROM bitnami/spark:3.5.1 as spark-image

FROM spark-image as spark-base
USER root
RUN pip install jupyterlab

WORKDIR /opt/spark

COPY ./requirements.txt .
RUN pip install -r ./requirements.txt

COPY ./entrypoint.sh .
RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]