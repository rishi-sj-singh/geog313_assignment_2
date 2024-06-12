# Start from a miniconda parent image
FROM continuumio/miniconda3:22.11.1

# Create Conda environment named a2-env with specific packages installed
RUN conda create -n a2-env numpy=1.25.2 scipy=1.11.1 matplotlib=3.7.2 jupyterlab=3.6.3

# Activate a2-env
RUN echo "conda activate a2-env" >> ~/.bashrc
ENV PATH="$PATH:/opt/conda/envs/a2-env/bin"

# Create a non-root user and switch to that user
RUN useradd -m assignment
USER assignment

# Set the working directory to /home/assignment
WORKDIR /home/assignment

# Expose the JupyterLab port
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]