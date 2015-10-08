# jup_openstack
**Very** simple instructions for jupyter in openstack

## Jupyter engine
- After creating the instance (Ubuntu ideally), copy the script.sh in the VM
- ssh to VM (make sure port 22 is open and it has a floating ip)
- in the terminal run:

        $ bash script.sh
- reboot machine with:

        $ sudo reboot
- Connect again and run:

        $ jupyter notebook --generate-config
- Open ipython

        $ ipython
- Inside ipython:

        >>> from IPython.lib import passwd
        >>> passwd()

- Enter password, and it'll print a hash that looks like u'sha1:d8831ac.....', make sure to copy that hash key
- Exit ipython

## Jupter configuration

- open this file (most likely path) for edition (using nano, vim):  ~/.jupyter/jupyter_notebook_config.py
- add the folowing lines at the top of the file:
    - c = get_config()
    - c.NotebookApp.password =u'sha1:d8831a....'  #Make sure to add the one created
    - c.IPKernelApp.pylab = 'inline'
    - c.NotebookApp.ip = '*'
    - c.NotebookApp.open_browser = False
    - c.NotebookApp.port = 8888

## Running jupyter

- Inside the Vm type:

        $ screen
- Type Enter and this will create a screen that you can deattach later, inside there type:

        $ sudo jupyter notebook

- To exit the screen, do Ctrl-A followed by Ctrl-D
- This will bring back the terminal and you can exit,
- To reattach the screen, type: 

        $ screen -r
- This will display the screen with jupyter running

- Go to your VM ip and add port 8888 , http://<ip>:8888

## Make sure

- port 22 (ssh), 80 (http) and 8888 is available (inside the openstack dashboard)
- you deattach and reattach the screen 


