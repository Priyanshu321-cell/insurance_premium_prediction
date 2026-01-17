# base image
FROM python:3.12-slim

# workdir
WORKDIR /app.py 

# copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy rest
COPY . .

# port
EXPOSE 8000

# command
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]