FROM runmymind/docker-android-sdk:latest

RUN apt-get update && apt-get -y install \
	ruby-full \
	libz-dev \
	libiconv-hook1 \
	libiconv-hook-dev \
	ruby-dev \
	zlib1g-dev \
	liblzma-dev \
	build-essential patch \
	jq

RUN gem update --system && gem install bundler

RUN yes | ${ANDROID_HOME}/tools/bin/sdkmanager "platforms;android-24"
RUN yes | ${ANDROID_HOME}/tools/bin/sdkmanager "system-images;android-24;default;armeabi-v7a"
RUN echo no | ${ANDROID_HOME}/tools/bin/avdmanager create avd -n test -k "system-images;android-24;default;armeabi-v7a" -f | echo no
