#!/bin/bash
pip3 install jupyterlab
pip3 install ipython
jupyter nbextension enable --py widgetsnbextension
cp ./jupyter_lab_config.py ~/.jupyter/
ipython profile create
cp ./ipython_kernel_config.py ~/.ipython/profile_default/

