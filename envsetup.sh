#!/bin/bash
cd app
if [ -d "env" ]
then
    echo "Python virtual env exixts"
else
    python3 -m venv env
fi

echo $PWD
source env/bin/activate

pip install -r requirements.txt



if [ -d "logs" ]
then
    echo "log folder exixts"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs

echo "envsetup finishes"