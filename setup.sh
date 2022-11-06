#!/bin/bash

sudo apt-get update
sudo apt-get -y install ros-melodic-desktop
sudo apt-get -y install ros-melodic-tf2-geometry-msgs ros-melodic-ackermann-msgs ros-melodic-joy ros-melodic-map-server ros-melodic-usb-cam ros-melodic-web-video-server ros-melodic-rosbridge-server 
sudo apt-get -y install python-catkin-tools python3-dev python3-numpy
sudo apt-get -y install  i2c-tools libi2c-dev

pip3 install rospkg catkin_pkg empy  requests paho-mqtt
pip2 install  requests paho-mqtt
sudo ln -s /usr/include/opencv4 /usr/include/opencv || true

git clone --branch main https://github.com/eclipse-muto/messages.git  src/messages
git clone --branch main  https://github.com/eclipse-muto/core.git   src/core
git clone --branch main  https://github.com/eclipse-muto/agent.git   src/agent
git clone --branch main  https://github.com/eclipse-muto/composer.git   src/composer


export ROS_PYTHON_VERSION=3

ROS_PYTHON_VERSION=3 source /opt/ros/melodic/setup.bash && catkin_make