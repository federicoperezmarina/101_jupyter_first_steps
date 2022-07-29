# 101_jupyter_first_steps
This repository is about how to use jupyter notebooks

## Table of Contents
* [Dockerfile](#dockerfile)
* [Build the image from Dockerfile](#build-the-image-from-dockerfile)
* [Run the image](#run-the-image)
* [Start Jupyter Lab](#start-jupyter-lab)

## Dockerfile
This is the Dockerfile that we want to use to build the image of jenkins.
```sh
FROM jupyter/all-spark-notebook

USER jovyan
WORKDIR /python-jupyter-lab
COPY . .

```

## Build the image from Dockerfile
In the second step we show how to build the image having the dockerfile
```sh
docker build -t jupyter_lab .
```
## Run the image
In the third step we are going to run the the docker build image
```sh
docker run -p 8888:8888 jupyter_lab
```

Output:
```sh
Entered start.sh with args: jupyter lab
/usr/local/bin/start.sh: running hooks in /usr/local/bin/before-notebook.d as uid / gid: 1000 / 100
/usr/local/bin/start.sh: running script /usr/local/bin/before-notebook.d/spark-config.sh
/usr/local/bin/start.sh: done running hooks in /usr/local/bin/before-notebook.d
Executing the command: jupyter lab
[I 2022-07-29 13:37:41.448 ServerApp] jupyterlab | extension was successfully linked.
[I 2022-07-29 13:37:41.460 ServerApp] nbclassic | extension was successfully linked.
[I 2022-07-29 13:37:41.461 ServerApp] Writing Jupyter server cookie secret to /home/jovyan/.local/share/jupyter/runtime/jupyter_cookie_secret
[I 2022-07-29 13:37:41.693 ServerApp] notebook_shim | extension was successfully linked.
[I 2022-07-29 13:37:41.715 ServerApp] notebook_shim | extension was successfully loaded.
[I 2022-07-29 13:37:41.716 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.10/site-packages/jupyterlab
[I 2022-07-29 13:37:41.716 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 2022-07-29 13:37:41.720 ServerApp] jupyterlab | extension was successfully loaded.
[I 2022-07-29 13:37:41.723 ServerApp] nbclassic | extension was successfully loaded.
[I 2022-07-29 13:37:41.723 ServerApp] Serving notebooks from local directory: /python-jupyter-lab
[I 2022-07-29 13:37:41.723 ServerApp] Jupyter Server 1.18.1 is running at:
[I 2022-07-29 13:37:41.723 ServerApp] http://b3481446257a:8888/lab?token=21578d353c3dda824ac0fdb5cbc6f85fd520884268ede656
[I 2022-07-29 13:37:41.723 ServerApp]  or http://127.0.0.1:8888/lab?token=21578d353c3dda824ac0fdb5cbc6f85fd520884268ede656
[I 2022-07-29 13:37:41.724 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2022-07-29 13:37:41.726 ServerApp] 
    
    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
    Or copy and paste one of these URLs:
        http://b3481446257a:8888/lab?token=21578d353c3dda824ac0fdb5cbc6f85fd520884268ede656
     or http://127.0.0.1:8888/lab?token=21578d353c3dda824ac0fdb5cbc6f85fd520884268ede656
```

## Start Jupyter Lab
To start using Jupyter Lab we should go to url presented in the output
```sh
http://127.0.0.1:8888/lab?token=21578d353c3dda824ac0fdb5cbc6f85fd520884268ede656
```