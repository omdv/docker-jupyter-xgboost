FROM jupyter/all-spark-notebook

MAINTAINER ole.bjorne@gmail.com

# -------Install XGBoost --------
USER root

RUN conda install -y gcc
#	pip2 install xgboost && \
#	conda install -n python2 xgboost && \
#	pip3 install xgboost && \
#	conda install -n python3 xgboost

RUN cd /opt && \
	git clone --recursive https://github.com/dmlc/xgboost && \
    cd xgboost && \
    make -j4

ENV PYTHONPATH /opt/xgboost/python-package

# -------Install TensorFlow --------
#ENV TF_BINARY_URL_PY2 https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl

#ENV TF_BINARY_URL_PY3=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp35-cp35m-linux_x86_64.whl

#RUN pip2 install --upgrade $TF_BINARY_URL_PY2 && \
#	conda install -n python2 tensorflow && \
#	pip3 install --upgrade $TF_BINARY_URL_PY3 && \
#	conda install -n python3 tensorflow

# -------Install OpenAI gym --------
#RUN cd /opt && \
#	git clone https://github.com/openai/gym && \
#	cd gym && \
#	pip install -e .


#USER $NB_USER