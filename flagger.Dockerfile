FROM sagemath/sagemath

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y python3-dev libffi-dev build-essential virtualenvwrapper python3-pip
RUN pip3 install angr

