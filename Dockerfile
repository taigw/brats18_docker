FROM python:2.7
WORKDIR	/usr/src/app

RUN pip install --upgrade pip && pip install --upgrade setuptools
RUN pip install SimpleITK
RUN pip install nibabel
RUN pip install numpy
RUN pip install tensorflow==1.7
RUN pip install NiftyNet
COPY brats18 ./
