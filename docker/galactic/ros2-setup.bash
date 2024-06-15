#!/usr/bin/env bash
set -e

echo "export PATH=\$PATH:~/.local/bin" >> ~/.bashrc
python3 -m pip install --no-warn-script-location \
  ipython

source /opt/ros/${ROS_DISTRO}/setup.bash
cd ~/$WS_NAME
rosdep update
rosdep install -yrq --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build

source /opt/ros/${ROS_DISTRO}/setup.bash
cd ~/$WS_NAME/src
rm -rf ROS-TCP-Endpoint
git clone -b main-ros2 https://github.com/Unity-Technologies/ROS-TCP-Endpoint
cd ~/$ws_NAME
colcon build --symlink-install --packages-select ros_tcp_endpoint

source /opt/ros/${ROS_DISTRO}/setup.bash
source ~/$ws_NAME/install/local_setup.bash


#cd ~/$ws_NAME/src
#git clone -b dashing https://github.com/ros2/teleop_twist_keyboard
#cd ~/$ws_NAME
#colcon build --symlink-install --packages-select teleop_twist_keyboard
#source /opt/ros/${ROS_DISTRO}/setup.bash
#source ~/$ws_NAME/install/local_setup.bash

