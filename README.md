# GEOG313 Assignment 2

## Step by Step Documentation

For this documentation "<>" indictates a user provided name. While this document provides name placeholders, users are encouraged to use their own naming conventions as appropriate

Step 1. Download necessary files (Dockerfile, python notebook) from Github

Step 2. Create a directory on local machine to host the Dockerfile from which the image/container will be built

$ mkdir <local_directory>

Step 3. Change the current working directory to the one created above (Dockerfile should be the only file in this directory)

$ cd <local_directory>

Step 4. Build a docker image with the necessary packages for the assignment from the Dockerfile provided using the command below. Note - make sure to include "." at end of command to signify that the Dockerfile to use is in the current working directory

$ docker build -t <image_name> .

Step 5. Once docker build has finished successfully, you can launch the container using the command below. 

$ docker run -it -p 8888:8888 <image_name>

Step 6. JupyterLab should launch in a browser when the command above is run. If it does not, copy and paste one of the provided links into a web browser to launch JupyterLab

Step 7. Navigate to the python notebook (.ipynb) that contains the commands for the assignment 2 analysis. Launch this notebook in JupyterLab to see rendered results (if results are not visualized upon launch, run all cells to display plot).
