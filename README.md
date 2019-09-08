# Home-Service-Robot

#### Summary of Tasks
Let’s summarize what should be done in this project to simulate a home service robot:

1. Design a simple environment with the Building Editor in Gazebo or inherently use world file from previous project.
2. Teleoperate your robot and manually test SLAM.
3. Use the ROS navigation stack and manually commands your robot using the 2D Nav Goal arrow in rviz to move to 2 different desired positions and orientations.
4. Write a pick_objects node that commands your robot to move to the desired pickup and drop off zones.
5. Write an add_markers node that subscribes to your robot odometry, keeps track of your robot pose, and publishes markers to rviz.

#### Install ROS Navigation System

```bash
$ sudo apt-get update
$ sudo apt-get install ros-kinetic-navigation
```

### install xterm 

```bash
$ sudo apt-get install xterm
```

### Create catkin workspace:
```
$ mkdir -p ~/catkin_ws/src
$ cd ~/catkin_ws/src
$ catkin_init_workspace
$ cd ~/catkin_ws
$ catkin_make
```

### Clone the following repositories:
```
$ cd ~/catkin_ws/src
$ git clone https://github.com/ros-perception/slam_gmapping.git
$ git clone https://github.com/turtlebot/turtlebot.git
$ git clone https://github.com/turtlebot/turtlebot_interactions.git
$ git clone https://github.com/turtlebot/turtlebot_simulator.git
```

### Source and build the project:
```
$ cd ~/catkin_ws
$ source devel/setup.bash
$ catkin_make
```
Run `.sh` script in `scripts` directory to deploy the home service robot.
