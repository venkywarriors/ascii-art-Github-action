# set base image (host OS)
FROM python:3.8

RUN pip install pyfiglet

# copy the content of the local src directory to the working directory
COPY src/ .

# command to run on container start
CMD [ "python", "./my_script.py" ]
