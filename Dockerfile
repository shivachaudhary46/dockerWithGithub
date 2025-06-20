# Use as the official layer for image 
FROM python:3.9-slim 

# set the working directory 
WORKDIR /app

# copy requirments needed
COPY requirements.txt .
RUN pip install -r requirements.txt

## copy the whole host file inside the container
COPY . . 

## make port 5000 available in the world outside the container
EXPOSE 5000

## Run app.py when the container launches
CMD ["python3", "app.py"]