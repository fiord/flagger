FROM sagemath/sagemath

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y git python3-dev libffi-dev build-essential virtualenvwrapper python3-pip

WORKDIR /home/sage
# z3 solver
RUN git clone https://github.com/Z3Prover/z3
WORKDIR /home/sage/z3
RUN /home/sage/sage/local/bin/python3 scripts/mk_make.py
WORKDIR /home/sage/z3/build
RUN make && sudo make install

WORKDIR /home/sage
# angr
RUN pip3 install angr
