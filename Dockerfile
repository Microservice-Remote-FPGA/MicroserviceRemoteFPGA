FROM python:3.7-slim

RUN python -m pip install --upgrade pip
# Set the working directory to /
WORKDIR ./

# Copy the current directory contents into the container at /
COPY . /

# add requirements (to leverage Docker cache)
#ADD ./requirements.txt ./requirements.txt

# Install any needed packages specified in requirements.txt
RUN python -m pip install -r requirements.txt

# Make port 5000 available to the world outside this container
#EXPOSE 5000

#make the container executable
ENTRYPOINT  ["python"]

# Run app.py when the container launches
#CMD ["run.py"]