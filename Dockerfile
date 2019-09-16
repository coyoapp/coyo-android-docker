FROM runmymind/docker-android-sdk:latest

RUN apt-get update && apt-get -y install \
	ruby-full \
	libz-dev \
	libiconv-hook1 \
	libiconv-hook-dev \
	ruby-dev \
	zlib1g-dev \
	liblzma-dev \
	build-essential patch
