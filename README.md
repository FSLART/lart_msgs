# lart_msgs

LART custom ROS messages.

cd ~/ros2_ws/src  
git clone <https://github.com/FSLART/lart_msgs.git>

rosdep update
rosdep install --from-paths . --ignore-src --rosdistro humble -y

cd ~/ros2_ws
colcon build --packages-select lart_msgs
source ~/ros2_ws/install/setup.bash



