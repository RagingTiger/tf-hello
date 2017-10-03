FROM nvidia/cuda

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR ./
COPY . .

# Requirements
RUN pip install -r requirements.txt

# Define default command.
CMD ["python", "tfhello.py"]
