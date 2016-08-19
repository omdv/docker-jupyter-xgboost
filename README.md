# docker-jupyter-xgboost

Collection of docker images based on the [opinionated stacks](https://github.com/jupyter/docker-stacks) of ready-to-run Jupyter applications in Docker. Official jupyter images are extended with xgboost, tensorflow and openAI gym libraries.

You can modify the Dockerfile to use the different jupyter image as a starting point.

## What it Gives You

### Same packages as a starting notebook and:
* [xgboost](https://github.com/dmlc/xgboost)
* Google's Tensorflow
* OpenAI Gym


## Basic Use

The following command starts a container with the Notebook server listening for HTTP connections on port 8888 without authentication configured. Port 6006 will connect you to TensorBoard. Note that you should start it first.

```
docker run -d -p 8888:8888 -p 6006:6006 omdv/jupyter-datascience
```

## Advanced use

To share the host directory on Mac OS or Windows you need an extra step to share your host directory with Virtual Box VM first. Follow [this guide](http://digitaldrummerj.me/docker-windows-mounting-directories/).

The key steps are the following (adjust names to your needs):
1. Stop the default docker-machine

2. Share the host folder with Virtual Box VM. You can do it either using the Virtual Box UI or in terminal like so:
```
VBoxManage.exe sharedfolder add default --name "notebooks" --hostpath "D:\Documents\Python" --automount
```

3. Start the machine and run the following two commands:
```
docker-machine ssh default "sudo mkdir --parents mkdir /var/notebooks"
docker-machine ssh default "sudo mount -t vboxsf notebooks /var/notebooks"
```

4. Run docker and mount the created folder to `/home/jovyan/work`:
```
docker run -d -p 8888:8888 -p 6006:6006 --name jupyter -v /var/notebooks:/home/jovyan/work/ omdv/jupyter-spark-xgboost
```

For further examples of please refer to the original [jupyter repository](https://github.com/jupyter/docker-stacks/tree/master/all-spark-notebook) for details.