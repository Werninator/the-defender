/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E130A9F
/// @DnDInput : 4
/// @DnDArgument : "expr" "undefined"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "enemy"
/// @DnDArgument : "var_1" "damage"
/// @DnDArgument : "var_2" "speed"
/// @DnDArgument : "var_3" "directionHasBeenSet"
enemy = undefined;
damage = 1;
speed = 1;
directionHasBeenSet = false;


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 343643E3
/// @DnDArgument : "steps" "1 * room_speed"
alarm_set(0, 1 * room_speed);


