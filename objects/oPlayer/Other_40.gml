/// @DnDAction : YoYo Games.Cameras.Get_View_Var
/// @DnDVersion : 1
/// @DnDHash : 4A6D9C4F
/// @DnDArgument : "target" "cam"
/// @DnDArgument : "target_temp" "1"
var cam = view_get_camera(0);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C9DDB7
/// @DnDInput : 4
/// @DnDArgument : "var" "camW"
/// @DnDArgument : "value" "camera_get_view_width(cam)"
/// @DnDArgument : "var_1" "camH"
/// @DnDArgument : "value_1" "camera_get_view_height(cam)"
/// @DnDArgument : "var_2" "newX"
/// @DnDArgument : "value_2" "x div camW * camW"
/// @DnDArgument : "var_3" "newY"
/// @DnDArgument : "value_3" "y div camH * camH"
var camW = camera_get_view_width(cam);
var camH = camera_get_view_height(cam);
var newX = x div camW * camW;
var newY = y div camH * camH;


/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 55BB88A9
/// @DnDInput : 3
/// @DnDArgument : "function" "camera_set_view_pos"
/// @DnDArgument : "arg" "cam"
/// @DnDArgument : "arg_1" "newX"
/// @DnDArgument : "arg_2" "newY"
camera_set_view_pos(cam, newX, newY);

