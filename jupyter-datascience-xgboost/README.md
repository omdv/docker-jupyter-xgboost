# jupyter-datascience-xgboost

Extension of [datascience-notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook) with xgboost, tensorflow and openAI gym libraries.

## What it Gives You

### Same packages as datascience-notebook:
* Jupyter Notebook 4.2.x
* Conda Python 3.x and Python 2.7.x environments
* pandas, matplotlib, scipy, seaborn, scikit-learn, scikit-image, sympy, cython, patsy, statsmodel, cloudpickle, dill, numba, bokeh pre-installed
* Conda R v3.3.x and channel
* plyr, devtools, dplyr, ggplot2, tidyr, shiny, rmarkdown, forecast, stringr, rsqlite, reshape2, nycflights13, caret, rcurl, and randomforest pre-installed
* Julia v0.3.x with Gadfly, RDatasets and HDF5 pre-installed
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