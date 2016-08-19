# docker-jupyter-xgboost

This image is based on the [opinionated stacks](https://github.com/jupyter/docker-stacks) of ready-to-run Jupyter applications in Docker. In particular it is an extension of 'all-spark-notebook' with addition of xgboost, tensorflow and openAI gym libraries.

## Jupyter Notebook Python, Scala, R, Spark, Mesos Stack

## What it Gives You

### Same packages as all-spark-notebook:
* Jupyter Notebook 4.2.x
* Conda Python 3.x and Python 2.7.x environments
* Conda R 3.3.x environment
* Scala 2.10.x
* pyspark, pandas, matplotlib, scipy, seaborn, scikit-learn pre-installed for Python
* ggplot2, rcurl preinstalled for R
* Spark 1.6.0 for use in local mode or to connect to a cluster of Spark workers
* Mesos client 0.22 binary that can communicate with a Mesos master
* Unprivileged user `jovyan` (uid=1000, configurable, see options) in group `users` (gid=100) with ownership over `/home/jovyan` and `/opt/conda`
* [tini](https://github.com/krallin/tini) as the container entrypoint and [start-notebook.sh](../base-notebook/start-notebook.sh) as the default command
* A [start-singleuser.sh](../base-notebook/start-singleuser.sh) script useful for running a single-user instance of the Notebook server, as required by JupyterHub
* A [start.sh](../base-notebook/start.sh) script useful for running alternative commands in the container (e.g. `ipython`, `jupyter kernelgateway`, `jupyter lab`)
* Options for HTTPS, password auth, and passwordless `sudo`

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