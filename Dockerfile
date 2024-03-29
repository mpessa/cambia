# Import required operating files
FROM python:3.7-slim

# Setup directory
WORKDIR /app
COPY . /app

# Run the sort
CMD ["python3", "main.py"]

# To retreive the output file run:
# docker cp <container ID>:/app/output.csv ./output.csv