FROM python:alpine
ADD . /app
WORKDIR /app
#COPY requirement.txt .
#RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
#COPY . .
EXPOSE 5007
CMD ["python","app.py"]


