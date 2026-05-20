FROM python:3.11-slim

# The working dir inside the container
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

# Run the Flask app
CMD [ "python", "app.py" ]

