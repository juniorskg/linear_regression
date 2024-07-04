# Dockerfile
FROM python:3.9-slim

# Install pip and Jupyter
RUN apt-get update && apt-get install -y python3-pip
RUN pip install jupyter

WORKDIR /app

# Copy the Jupyter notebook into the container
COPY dataintass.ipynb .

# Expose the Jupyter port
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
