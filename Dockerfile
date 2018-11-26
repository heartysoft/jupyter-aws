FROM gettyimages/spark:2.3.1-hadoop-3.0

RUN pip install jupyter

ENV PYSPARK_DRIVER_PYTHON jupyter
ENV PYSPARK_DRIVER_PYTHON_OPTS "notebook --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.notebook_dir=/notebooks/"
ENV MASTER local
ENV SPARK_CONF_DIR /conf
ENV SPARK_PUBLIC_DNS localhost
ENV SPARK_DIST_CLASSPATH="/jars/*:${SPARK_DIST_CLASSPATH}"

CMD ["pyspark"]
