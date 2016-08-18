FROM jupyter/all-spark-notebook

MAINTAINER ole.bjorne@gmail.com

USER root

# xgboost compile
RUN git clone --recursive https://github.com/dmlc/xgboost && \
    cd xgboost && \ 
    make -j4

ENV PYTHONPATH ~/xgboost/python-package

# xgboost python install
RUN cd xgboost/python-package \
    && python setup.py install
    
#RUN . /opt/conda/bin/activate python2 \
#    && cd xgboost/python-package \
#    && python setup.py install

#RUN rm -rf xgboost/

# xgboost R install

# USER $NB_USER