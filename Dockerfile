FROM debian:sid

RUN apt update -y \
	&& apt upgrade -y \
	&& apt install -y wget curl ntpdate unzip lsof cron

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 
CMD /entrypoint.sh
RUN service v2ray status \
	&& service caddy status