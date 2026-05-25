# Lesson

Environment reproducibility, gotta create specific python virtual environemns so the project has its own setup


`$ venv`

creates a separate Python environment just for this ML project

`$ source ml-env/bin/activate`

makes my shell use that environment, like telling it that for this terminal session, use the Python and pip inside ml-env, not the system-wide Python. the main thing it changes is my `PATH` as my shell might use `/usr/bin/python` and `/usr/bin/pip` but after activation `/root/code/ml-env/bin/python`
and `/root/code/ml-env/bin/pip` so when it installs pacjages like numpy with `pip install numpy`, it installs it to `/root/code/ml-env/`

`$ pip install ...`

installs the required ML libraries inside that environment

`$ pip freeze > requirements.txt`

records the exact installed package versions so another machine, teammate, or future-you can recreate the same setup.

# Solution

the whole solution to the problem is basically

```bash
$ python3 -m venv ml-env
$ source ml-env/bin/activate
$ pip install --upgrade pip
$ pip install numpy pandas scikit-learn matplotlib
$ pip freeze > requirements.txt
```

# Problem


```
Day 1: Create a Python Virtual Environment for ML
```


The xFusionCorp Industries data science team needs a standardised Python environment for their new ML project. Set up a virtual environment with the required ML libraries on the controlplane host.

Create a Python virtual environment named ml-env under /root/code/ using python3 -m venv.

Activate the environment and install the following packages: numpy, pandas, scikit-learn, and matplotlib.

Generate a requirements.txt file using pip freeze and save it at /root/code/requirements.txt.