#!/bin/bash

echo "please waite for the script to setup";

source my_env/bin/activate

python3 manage.py runserver
