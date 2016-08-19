# docker-jupyter-xgboost

Collection of docker images based on the [opinionated stacks](https://github.com/jupyter/docker-stacks) of ready-to-run Jupyter applications in Docker. Official jupyter images are extended with xgboost, tensorflow and openAI gym libraries.

You can modify the Dockerfile to use the different jupyter image as a starting point.

## What it Gives You

### Same packages as a starting notebook.

### and:
* [xgboost](https://github.com/dmlc/xgboost)
* Google's Tensorflow
* OpenAI Gym


## Basic Use

The following command starts a container with the Notebook server listening for HTTP connections on port 8888 without authentication configured.

```
docker run -d -p 8888:8888 omdv/jupyter-datascience
```

## Advanced use

Please refer to the original [jupyter repository](https://github.com/jupyter/docker-stacks/tree/master/all-spark-notebook) for details.