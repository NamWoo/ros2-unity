#!/bin/bash


workingspace=colcon_ws

mkdir -p ~/${workingspace}/src

#ROS-TCP-Endpoint
cd ~/${workingspace}/src
git clone -b main-ros2 https://github.com/Unity-Technologies/ROS-TCP-Endpoint
cd ~/${workingspace} && colcon build --symlink-install --packages-select ros_tcp_endpoint
source ~/${workingspace}/install/setup.bash

#unity_slam_example
cd ~/${workingspace}/src
git clone https://github.com/namwoo/unity_slam_example
cd ~/${workingspace} && colcon build --symlink-install --packages-select unity_slam_example
source ~/${workingspace}/install/setup.bash

#
#workingspace=colcon_ws
echo 'export TURTLEBOT3_MODEL=waffle_pi' >> ~/.bashrc
echo 'source ~/${workingspace}/install/setup.bash' >> ~/.bashrc
