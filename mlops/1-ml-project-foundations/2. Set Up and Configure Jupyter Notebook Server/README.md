# Solution

Just edited the python config file

Then created the directory `mkdir -p /root/notebooks`

Then ran the command


```bash
$ source /root/code/ml-env/bin/activate

$ jupyter lab --config=/root/code/jupyter_lab_config.py --allow-root --no-browser &
```

Verified it with

`ss -lntp | grep 8888`

And got the result


`LISTEN 0 128 0.0.0.0:8888 0.0.0.0:* users:(("jupyter-lab",pid=4200,fd=6))`



# Problem

```
Day 2: Set Up and Configure Jupyter Notebook Server
```

A teammate has configured a JupyterLab server for the xFusionCorp Industries data science team, but the server does not behave correctly. Inspect the configuration, diagnose the issues, and start the server.


JupyterLab is already installed in the virtual environment at `/root/code/ml-env/`. The team's configuration file is at `/root/code/jupyter_lab_config.py` and is visible in the file explorer.

When JupyterLab is started, the Jupyter UI button at the top of the lab must open the notebook interface.

For this to work, the running server must meet the following requirements:

it listens on port `8888`;
it binds on `0.0.0.0` (the lab proxy cannot reach a server that is only bound on `127.0.0.1`);
the notebook root directory is `/root/notebooks/`, and that directory exists on disk.
Open the configuration file, identify every setting that prevents the requirements above from being met, and correct it. Create any missing directories.

Start JupyterLab from the virtual environment using the corrected configuration:

```bash
   source /root/code/ml-env/bin/activate
   jupyter lab --config=/root/code/jupyter_lab_config.py --allow-root --no-browser &
```
Make sure JupyterLab is running before using the button at the top of the lab.