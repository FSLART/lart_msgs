cmake_minimum_required(VERSION 3.8)
project(lart_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/ASStatus.msg"
  "msg/Cone.msg"
  "msg/ConeArray.msg"
  "msg/Dynamics.msg"
  "msg/Mission.msg"
  "msg/State.msg"
  "msg/DynamicsCMD.msg"
  "msg/GNSSINS.msg"
  "msg/PathSpline.msg"
  "msg/SlamStats.msg"
  "msg/PathPoint.msg"
  "msg/PathArray.msg"
  "srv/Heartbeat.srv"
  
  "dbc_msgs/Acu.msg"
  "dbc_msgs/Aqt1.msg"
  "dbc_msgs/Aqt2.msg"
  "dbc_msgs/Aqt3.msg"
  "dbc_msgs/Aqt4.msg"
  "dbc_msgs/Aqt7.msg"
  "dbc_msgs/AsfSignals.msg"
  "dbc_msgs/CubemarsFeedback.msg"
  "dbc_msgs/CubemarsPositionLoop.msg"
  "dbc_msgs/DvDynamics1.msg"
  "dbc_msgs/DvDynamics2.msg"
  "dbc_msgs/DvStatus.msg"
  "dbc_msgs/Jetson.msg"
  "dbc_msgs/Res.msg"
  "dbc_msgs/VcuHv.msg"
  "dbc_msgs/VcuIgnR2d.msg"
  "dbc_msgs/VcuRpm.msg"
  "dbc_msgs/VcuRpmTarget.msg"
  "dbc_msgs/VcuTorqueTarget.msg"
  "dbc_msgs/SlamStatsCan.msg"
  
  DEPENDENCIES geometry_msgs std_msgs
)
ament_package()
