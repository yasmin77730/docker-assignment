# Use the Jupyter Docker image
FROM jupyter/datascience-notebook

# Set the working directory
WORKDIR /home/jovyan/work

# Expose port 8888
EXPOSE 8888
COPY . /home/jovyan/work
# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
