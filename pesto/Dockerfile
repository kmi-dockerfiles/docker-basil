FROM nginx:stable

ENV PESTO_VERSION 0.3

RUN apt-get -y update \
	&& apt-get install -y unzip curl \
	&& curl -SL "https://github.com/the-open-university/pesto/releases/download/v$PESTO_VERSION/app-$PESTO_VERSION.zip" -o app.zip \
	&& unzip app.zip -d /usr/share/nginx/html \
	&& apt-get -y remove --purge unzip curl \
	&& apt-get -y autoremove --purge \
	&& rm -rf app.zip /var/lib/apt/lists/*
