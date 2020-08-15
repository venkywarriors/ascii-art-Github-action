# set base image (host OS)
FROM python:3.8

# copy the dependencies file to the working directory
COPY my_script.py .

# install dependencies
RUN pip install pyfiglet

# command to run on container start
CMD [ "python", "./my_script.py" ]
