#Stage 1 - Install dependencies and build the app
FROM ubuntu:20.04

# Install flutter dependencies
RUN apt-get update 
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install Flask
RUN apt-get clean

RUN apt install -y git

# Clone the flutter repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

# Set flutter environment path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Run flutter doctor
RUN flutter doctor -v

# Enable flutter web
RUN flutter channel stable
RUN flutter upgrade
RUN flutter config --enable-web

# Copy files to container and build
RUN mkdir /app/
COPY . /app/
WORKDIR /app/
RUN flutter pub get
RUN flutter build web

# Record the exposed port
EXPOSE 4000

# make server startup script executable and start the web server
RUN ["chmod", "+x", "/app/server/server.sh"]

ENTRYPOINT [ "/app/server/server.sh"]