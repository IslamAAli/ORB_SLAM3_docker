FROM ubuntu:16.04
MAINTAINER Islam A. Ali <islam.a.mustafa@gmail.com>

# ------------------------------------------------------------------------------------------
# Definitions
ENV OPENCV_VERSION 3.4.1
ENV OPENCV_DOWNLOAD_URL https://github.com/opencv/opencv/archive/$OPENCV_VERSION.zip
ENV OpenCV_DIR opencv-$OPENCV_VERSION
ENV EIGEN_VERSION 3.3.2
ENV EIGEN_DOWNLOAD_URL http://bitbucket.org/eigen/eigen/get/$EIGEN_VERSION.tar.gz

# ------------------------------------------------------------------------------------------
# [1] General Dependencies
RUN echo "[Dockerfile Info] Installing GENERAL Dependencies ......"
RUN apt-get update && apt-get install -y \
	 	build-essential \
		cmake \
		pkg-config \
		htop \
		gedit \
		wget \
		git \
		unzip \
		curl \
		software-properties-common
		

# ------------------------------------------------------------------------------------------                                 
# [2] OpenCV

RUN echo "[Dockerfile Info] Installing OPENCV Dependencies ......"
RUN apt-get update && apt-get install -y \
	build-essential \
	libgtk2.0-dev\
	libavcodec-dev\
	libavformat-dev\ 
	libswscale-dev \
	python3.5-dev \
	python3-numpy \
	libtbb2 \
	libtbb-dev
	
RUN apt-add-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN apt-get update && apt-get install -y \
	libjasper1\
	libjasper-dev \
	libjpeg-dev \
	libpng-dev \
	libtiff5-dev \
	libjasper-dev \
	libdc1394-22-dev \
	libeigen3-dev \
	libtheora-dev \
	libvorbis-dev \
	libxvidcore-dev \
	libx264-dev \
	sphinx-common \
	libtbb-dev \
	yasm \
	libfaac-dev \
	libopencore-amrnb-dev \
	libopencore-amrwb-dev \
	libopenexr-dev \
	libgstreamer-plugins-base1.0-dev \
	libavutil-dev \
	libavfilter-dev \
	libavresample-dev

RUN echo "[Dockerfile Info] Installing OPENCV ......"
RUN cd /opt && \
	wget "$OPENCV_DOWNLOAD_URL" && \
	unzip 3.4.1.zip && \
	cd opencv-3.4.1 && \
	mkdir build
RUN cd /opt/opencv-3.4.1/build && \ 
	cmake -D CMAKE_BUILD_TYPE=RELEASE -D WITH_CUDA=OFF -D WITH_OPENGL=OFF .. && \
	make -j8 && \
	make install

	
# ------------------------------------------------------------------------------------------
# [3] Pangolin
RUN echo "[Dockerfile Info] Installing PNGOLIN Dependencies ......"
RUN apt-get update && apt-get install -y \
		libgl1-mesa-dev \
		libglew-dev \
		libpython2.7-dev \
		ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libavdevice-dev \
		libdc1394-22-dev libraw1394-dev \		
		libjpeg-dev libpng12-dev libtiff5-dev libopenexr-dev

RUN echo "[Dockerfile Info] Installing PNGOLIN ......"
RUN mkdir -p ~/pangolin && \
		cd ~/pangolin && \
		git clone https://github.com/stevenlovegrove/Pangolin.git && \
		cd Pangolin && \
		mkdir build && \
		cd build && \
		cmake .. && \
		cmake --build .	


# ------------------------------------------------------------------------------------------
# [4] Eigen3
RUN echo "[Dockerfile Info] Installing EIGEN3 Dependencies ......"
# none 
RUN echo "[Dockerfile Info] Installing EIGEN3 ......"
# installed in the pre-requisits of the opencv Library libeigen3-dev


# ------------------------------------------------------------------------------------------
# [5] Orb-slam3
RUN echo "[Dockerfile Info] Installing ORB-SLAM3 ......"
RUN mkdir -p ~/orbslam3 && \
	cd ~/orbslam3 && \
	git clone https://github.com/UZ-SLAMLab/ORB_SLAM3.git ORB_SLAM3 && \
	cd ORB_SLAM3 && \
	chmod +x build.sh && \
	./build.sh   


