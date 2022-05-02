#!/bin/bash
export PATH=$HOME/.local/bin/:$PATH
pip3 install jupyterlab
pip3 install ipython
pip3 install widgetsnbextension
jupyter nbextension enable widgetsnbextension --user --py
jupyter nbextension install --py widgetsnbextension --user
jupyter nbextension enable widgetsnbextension --user --py
cp ./jupyter_lab_config.py ~/.jupyter/ 
ipython profile create
cp ./ipython_kernel_config.py ~/.ipython/profile_default/

jupyter labextension install jupyterlab-theme-solarized-dark
pip3 install --upgrade jupyterlab-vim
jupyter labextension install @jupyterlab/toc
pip3 install ipympl ipython-autotime
jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib
jupyter labextension install @krassowski/jupyterlab_go_to_definition  

