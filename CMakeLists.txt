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
  
  "dbc_msgs/AcuIgn.msg"
  "dbc_msgs/AsfSignals.msg"
  "dbc_msgs/DynFrontSig1.msg"
  "dbc_msgs/DynRearSig2.msg"
  "dbc_msgs/JetsonMs.msg"
  "dbc_msgs/MaxonPositionTx.msg"
  "dbc_msgs/MaxonStatusTx.msg"
  "dbc_msgs/Res.msg"
  "dbc_msgs/VcuHv.msg"
  "dbc_msgs/AcuMs.msg"
  "dbc_msgs/AsState.msg"
  "dbc_msgs/DynFrontSig2.msg"
  "dbc_msgs/JetsonData1.msg"
  "dbc_msgs/MaxonModeRx.msg"
  "dbc_msgs/MaxonProfileRx.msg"
  "dbc_msgs/MaxonVelocityTx.msg"
  "dbc_msgs/RpmTarget.msg"
  "dbc_msgs/VcuIgnR2d.msg"
  "dbc_msgs/AcuStatus.msg"
  "dbc_msgs/DlMsg1.msg"
  "dbc_msgs/DynRearSig1.msg"
  "dbc_msgs/JetsonDebug.msg"
  "dbc_msgs/MaxonPositionRx.msg"
  "dbc_msgs/MaxonStatus2Tx.msg"
  "dbc_msgs/RdJetson.msg"
  "dbc_msgs/VcuAppsRaw.msg"
  "dbc_msgs/VcuRpm.msg"

  DEPENDENCIES geometry_msgs std_msgs
)
ament_package()
