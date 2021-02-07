FROM raspbian/stretch
COPY . /var/www/java

WORKDIR /var/www/java



RUN apt-get update
#RUN apt-get -y upgrade

RUN apt install -y python-pip
#RUN apt install -y python3-pip



#RUN pip3 install Adafruit_DHT
RUN pip install Adafruit_DHT
#RUN pip install Adafruit_Python_DHT
#RUN pip3 install Adafruit_Python_DHT

#RUN apt-get install python-pip
RUN apt-get install -y mongodb
#RUN git clone https://github.com/geekonerd/weather_station
#RUN cd weather_station
RUN apt-get install -y nodejs npm git
#RUN npm install npm@latest -g
#RUN apt-get update
#RUN apt-get -y upgrade
#RUN npm start
#RUN pip3 install socketIO_client
#RUN pip install sockerIO_client
RUN npm install
#RUN npm audit fix

RUN pip install socketIO_client

CMD ["cat", "/var/www/java/leggimi"]
