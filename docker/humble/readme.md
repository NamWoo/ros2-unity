
# sample 

* https://docs.ros.org/en/foxy/Installation/Alternatives/Ubuntu-Development-Setup.html
* https://github.com/Unity-Technologies/Robotics-Nav2-SLAM-Example
* https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/#pc-setup
* https://github.com/ROBOTIS-GIT/turtlebot3/blob/humble-devel/turtlebot3_description/rviz/model.rviz
* https://github.com/ROBOTIS-GIT/turtlebot3/tree/humble-devel/turtlebot3_bringup/launch
* https://docs.unity3d.com/Simulation/manual/author/install-the-authoring-tools.html
* https://github.com/Unity-Technologies/Unity-Robotics-Hub/issues/345
* https://github.com/Unity-Technologies/ROS-TCP-Endpoint/tree/main-ros2



```bash
export TURTLEBOT3_MODEL=waffle_pi

#https://github.com/ROBOTIS-GIT/turtlebot3/blob/humble-devel/turtlebot3_bringup/launch/turtlebot3_state_publisher.launch.py
ros2 launch turtlebot3_bringup turtlebot3_state_publisher.launch.py 

#https://github.com/NamWoo/unity_slam_example/blob/main/launch/unity_slam_example.py
ros2 launch unity_slam_example unity_slam_example.py


ros2 run teleop_twist_keyboard teleop_twist_keyboard

```