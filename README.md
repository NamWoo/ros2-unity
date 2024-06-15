# ros2-unity

```bash

sudo docker build -t ros2nav2:0.1 .
sudo docker run -p 6080:80 --security-opt seccomp=unconfined --shm-size=512m ros2nav2:0.1

#http://127.0.0.1:6080/

#ros2 run ros_tcp_endpoint default_server_endpoint
#ros2 run teleop_twist_keyboard teleop_twist_keyboard

#cd ~/$ws_NAME/src
#git clone -b dashing https://github.com/ros2/teleop_twist_keyboard
#cd ~/$ws_NAME
#colcon build --symlink-install --packages-select teleop_twist_keyboard
#source /opt/ros/${ROS_DISTRO}/setup.bash
#source ~/$ws_NAME/install/local_setup.bash

```






