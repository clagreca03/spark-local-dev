#!/bin/bash

# start spark master
/opt/bitnami/spark/sbin/start-master.sh && \

# start jupyter lab without authentication
jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --notebook-dir=/opt/spark/work-dir