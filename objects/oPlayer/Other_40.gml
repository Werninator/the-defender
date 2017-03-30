/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 03B0D315
/// @DnDArgument : "not" "1"
var l03B0D315_0;
l03B0D315_0 = keyboard_check(vk_space);
if (!l03B0D315_0)
{
	

	/// @DnDAction : YoYo Games.Cameras.Get_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3BE26091
	/// @DnDParent : 03B0D315
	/// @DnDArgument : "target" "cam"
	/// @DnDArgument : "target_temp" "1"
	var cam = view_get_camera(0);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02C9DDB7
	/// @DnDInput : 2
	/// @DnDParent : 03B0D315
	/// @DnDArgument : "var" "newX"
	/// @DnDArgument : "value" "x div global.camW * global.camW"
	/// @DnDArgument : "var_1" "newY"
	/// @DnDArgument : "value_1" "y div global.camH * global.camH"
	var newX = x div global.camW * global.camW;
	var newY = y div global.camH * global.camH;
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 55BB88A9
	/// @DnDInput : 3
	/// @DnDParent : 03B0D315
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "cam"
	/// @DnDArgument : "arg_1" "newX"
	/// @DnDArgument : "arg_2" "newY"
	camera_set_view_pos(cam, newX, newY);


}

