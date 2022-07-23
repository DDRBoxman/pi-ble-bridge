FROM rustembedded/cross:arm-unknown-linux-gnueabihf

RUN  rm /var/cache/ldconfig/aux-cache
RUN /sbin/ldconfig.real

# Install libdbus libraries and pkg-config
RUN dpkg --add-architecture armhf && \
	    apt-get update && \
	    apt-get install --assume-yes libdbus-1-dev libdbus-1-dev:armhf pkg-config
