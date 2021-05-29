# weather-flask

# Weather Report of Indian cities
This live OI analysis graph presents trend of market. When Call Writters are increasing it means bearishness in market, and when Put Writters are increasing it means bullishness in market. Subject to some event trend may reflects wrong.

![OI Graph](sample.png)


### Prerequisites
 - Python 3

Confirm you are using python 3.x 
E.g.
```
$ python --version
Python 3.8.5
```
Install version 3 if you dont have one available on your machine 
E.g.
```
brew install python
```
In general unversioned symlinks are installed into `/usr/local/opt/python/libexec/bin`, set the PATH and update .profile file to avoid manually setting the path each time.
```
$ cat ~/.profile
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
$ python --version
Python 2.7.16
$ source ~/.profile
$ python --version
Python 3.8.5
```
### Installing requirements using below command
```
pip3 install -r requirements.txt
```
### Package versions
```
click==7.1.2
Flask==1.1.2
itsdangerous==1.1.0
Jinja2==2.11.2
MarkupSafe==1.1.1
Werkzeug==1.0.1

```

### Usage
Open Terminal (bash shell) and then run following commands

```
cd Weather-app
python Citiesweather.py
```

```
Copy the http:// address shown on Terminal and Open it in browser. 
E.g. http://127.0.0.1:5000/











### Authors
 - NaveenKumarChinnappa