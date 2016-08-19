FROM jupyter/all-spark-notebook

MAINTAINER ole.bjorne@gmail.com

# -------Install XGBoost --------
USER root

# install gcc with openmp support in conda
RUN conda install -y gcc

# download and build xgboost
RUN cd /opt && \
	git clone --recursive https://github.com/dmlc/xgboost && \
    cd xgboost && \
    make -j4

# set environment var to python package for both python2 and python3
ENV PYTHONPATH /opt/xgboost/python-package

# install R package - use pre-compiled CRAN version
RUN Rscript -e "install.packages('xgboost',repos='http://cran.rstudio.com/')"


# -------Install TensorFlow --------
# set up download links for both python2 and python3
ENV TF_BINARY_URL_PY2 https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
ENV TF_BINARY_URL_PY3 https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp35-cp35m-linux_x86_64.whl

# install python package for both environments
RUN pip2 install $TF_BINARY_URL_PY2 && \
	pip3 install $TF_BINARY_URL_PY3


# -------Install OpenAI gym --------
RUN cd /opt && \
	git clone https://github.com/openai/gym && \
	cd gym && \
	pip2 install -e . && \
    pip3 install -e .

USER $NB_USER