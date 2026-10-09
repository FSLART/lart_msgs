std_msgs/Header header

int8 vcu_state

# Signal Value Constants
int8 VCU_STATE_STATE_INIT = 0
int8 VCU_STATE_STATE_SHUTDOWN = 1
int8 VCU_STATE_STATE_STANDBY = 2
int8 VCU_STATE_STATE_PRECHARGE = 3
int8 VCU_STATE_STATE_WAITING_FOR_R2D_MANUAL = 4
int8 VCU_STATE_STATE_WAITING_FOR_R2D_AUTO = 5
int8 VCU_STATE_STATE_READY_MANUAL = 6
int8 VCU_STATE_STATE_READY_AUTONOMOUS = 7
int8 VCU_STATE_STATE_AS_EMERGENCY = 8
float32 front_left_speed
float32 front_right_speed
float32 front_wheel_speed_ok
float32 road_wheel_angle
float32 steering_angle_ok
float32 tc_factor_rear_left
float32 tc_factor_rear_right
float32 tc_state
float32 throttle_status
float32 tv_shift
float32 tv_state
float32 vcu_states_counter
