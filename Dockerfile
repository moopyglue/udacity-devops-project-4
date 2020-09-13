#
#   Dockerfile
#
#   Simon Wall - Udacity Nanodegree - Project 4
#
FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app


# Install packages from requirements.txt
COPY requirements.txt /app/
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Copy source code to working directory
COPY . /app/
COPY hadolint /usr/bin/

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]


