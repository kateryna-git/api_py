FROM python:3.8
#FROM alpine:latest
#RUN pip install virtualenv
#ENV VIRTUAL_ENV=/venv
#RUN virtualenv venv -p python3
#ENV PATH="VIRTUAL_ENV/bin:$PATH"

#ADD . .
  


RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app
RUN pip3 --no-cache-dir install -r requirements.txt
EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]

# Expose port 
EXPOSE 5000


ENTRYPOINT ["python3"]
CMD ["app.py"]
# Run the application:
#CMD ["python", "app.py"]



#FROM python:3

#WORKDIR /usr/src/app

#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

#COPY . .

#CMD [ "python", "./your-daemon-or-script.py" ]
