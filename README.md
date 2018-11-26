
[![Build Status](https://travis-ci.org/heartysoft/jupyter-aws.svg?branch=master)](https://travis-ci.org/heartysoft/jupyter-aws)

# jupyter-aws
A docker container to run Jupyter Notebooks that need access to s3a features (Use of sts tokens, etc.)


## usage

Copy the docker-compose.yaml file. Change build: . to image: (docker image here). 
Ensure you have docker-compose installed. Run docker-compose up -d. (skip the -d if you wish to run attached.)

Jupyter will be running on localhost:8888 on the host machine. 

## Additional jars

create a jars folder next to docker-compose.yaml if it doesn't exist. Put any additional jars there, and restart the kernel. Be careful not to check them in to source control.

## Notebook location

Put any notebooks into a notebooks/ folder alongside docker-compose.yaml. That's the notebook directory, and any notebooks will be stored there. Within the container, it's available in /notebooks.

## Other directories

A "data" and a "code" folder is also mapped to /data and /code within the container. Files in there will be synced automatically. Again, be careful about source control. 

## Other Stuff

Check the .gitignore. It's a basic python one with stuff added to work with this container in an easier manner. The additional stuff is (so far):

```
/jars/*.jar
.idea/
.ipynb_checkpoints/
/notebooks/
*.swp
```

The base image for this is gettyimages/spark. It's using spark 2.3.1 without hadoop, and hadoop 3.0. 


