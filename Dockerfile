FROM python:3.9-slim 
# it can use an existing image or can pull from docker hub 
LABEL name=ashutoshh
LABEL email=ashutoshh@linux.com 
# optional but you can share your contact details to other teams
RUN  pip install Flask==3.0.3 
# to make any changes in existing image like installing software etc
RUN  mkdir  /opt/UdayflaskApp
COPY  .   /opt/UdayflaskApp/ 
# created a directory and copied code
# copy will be checking .dockerignore file is exists
WORKDIR /opt/UdayflaskApp/ 
# changing current location like cd command 
CMD ["python","uday.py"]
# to choose default process which can be replace by user while container creation  