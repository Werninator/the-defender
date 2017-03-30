/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 63E0A805
var l63E0A805_0;
l63E0A805_0 = keyboard_check(vk_space);
if (l63E0A805_0)
{
	

	/// @DnDAction : YoYo Games.Cameras.Get_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2640EEB1
	/// @DnDParent : 63E0A805
	/// @DnDArgument : "target" "cam"
	/// @DnDArgument : "target_temp" "1"
	var cam = view_get_camera(0);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69D3FF03
	/// @DnDInput : 2
	/// @DnDParent : 63E0A805
	/// @DnDArgument : "var" "newX"
	/// @DnDArgument : "value" "x div global.camW * global.camW"
	/// @DnDArgument : "var_1" "newY"
	/// @DnDArgument : "value_1" "y div global.camH * global.camH"
	var newX = x div global.camW * global.camW;
	var newY = y div global.camH * global.camH;
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 43F8485B
	/// @DnDInput : 3
	/// @DnDParent : 63E0A805
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "cam"
	/// @DnDArgument : "arg_1" "newX"
	/// @DnDArgument : "arg_2" "newY"
	camera_set_view_pos(cam, newX, newY);


}

