#
# https://github.com/docker-library/python
#
#   Base image has some ONBUILD triggers
#       add current dir into /usr/src/app
#       executes pip install -r requirements.txt
#
#   You can switch between python2 and python3
#   Using the tag
#
#   docker build -t pycones/flask .
#   docker run -it --rm -p 5002:5000 pycones/flask
#


FROM python:2-onbuild
CMD [ "python", "./app.py" ]