# jup_openstack
**Very** simple instructions for jupyter in openstack

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
- open this file (most likely path) for edition:  ~/.jupyter/jupyter_notebook_config.py
- add the folowing lines:

