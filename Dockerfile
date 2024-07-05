FROM spark:3.5.1 as spark-image


FROM spark-image as spark-base
USER root
RUN apt-get update -y \
    && apt-get install python-is-python3 -y
RUN pip install jupyterlab pyspark pandas pyarrow
RUN pip install delta-spark

ENTRYPOINT ["jupyter", "lab", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]


# TODO
# COPY requirements.txt .
# RUN pip install -r requirements.txt