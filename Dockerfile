FROM jupyter/all-spark-notebook

USER jovyan
WORKDIR /python-jupyter-lab
COPY . .

