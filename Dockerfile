FROM python:3.7.5-slim

ADD my_script.py /

RUN pip install pyfiglet

RUN mkdir my_script && cd my_script

COPY my_script.py /bin/my_script/my_script.py

CMD python /bin/my_script/my_script.py
