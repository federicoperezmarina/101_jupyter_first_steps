FROM jupyter/all-spark-notebook

USER root

RUN chown jovyan:users *.ipynb

WORKDIR /python-jupyter-lab
COPY . .

