# set base image (host OS)
FROM python:3.8

ADD my_script.py /

# Create a new directory
RUN mkdir my_script && cd my_script

# copy the content of the local src directory to the working directory
COPY my_script.py /bin/my_script/my_script.py

# install dependency
RUN pip install pyfiglet

# command to run on container start
CMD [ "python", "/bin/my_script/my_script.py" ]

#Use multi-stage builds
FROM ubuntu
RUN apt update && apt install -y cowsay
CMD ["/usr/games/cowsay", "Dockerfiles are cool!"]
