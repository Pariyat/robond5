#!/bin/sh
catkin_dir=$(pwd)
catkin_src_dir=$catkin_dir/src

xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$catkin_src_dir/worlds/mynewworld.world " &
sleep 5

xterm -e " rosrun gmapping slam_gmapping" &
sleep 5

xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5

xterm -e " roslaunch turtlebot_teleop keyboard_teleop.launch " &
