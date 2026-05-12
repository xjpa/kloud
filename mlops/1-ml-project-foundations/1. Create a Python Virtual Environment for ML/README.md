the whole solution to the problem is basically

```
$ python3 -m venv ml-env
$ source ml-env/bin/activate
$ pip install --upgrade pip
$ pip install numpy pandas scikit-learn matplotlib
$ pip freeze > requirements.txt
```