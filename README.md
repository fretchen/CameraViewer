# CameraViewer

A flask server that should simplify the observation of our images. Something that just looks for images and then saves them at the right place.

# Installation

- download github for desktop
- set up the proxy for github
- get mini-conda
- open the anaconda prompt
- set the proxy for anaconda
- create a new directory
- clone the repository through in the new folder through
 > git clone ...
- create a new virtualenv through
 > conda create -n YOURNAME python=3.7
- activate the virtualenv through
> source activate YOURNAME
- install the dependencies through
> pip install -r requirements.txt

 or if you are at the kip:

 > pip --proxy http://proxy.kip.uni-heidelberg.de:8080 install --ignore-installed -r requirements.txt
- set up the database through

> flask db upgrade

- start flask through

> start.sh
- open it in a brower on 'localhost:5000'

# Daily Usage

 - activate the virtualenv through 'source activate YOURNAME'
 - start it through 'start.sh'
 - runs on 'localhost:5000'

## Dev updates to the database

If you are changing the properties of the models.py files, it is likely, that you are messing the the tables of the sqlite file in the background of the script. To keep it simple we are using [flask-migrate](https://flask-migrate.readthedocs.io/en/latest/) to keep track. You then have to create the update command through:

> flask db migrate

It creates a new python file in the migrations folder. You then update the sqlite database through a:

> flask db upgrade
