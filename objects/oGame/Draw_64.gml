/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4CC2F570
/// @DnDArgument : "expr" "room != rIntro"
if(room != rIntro)
{
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24701E05
	/// @DnDInput : 2
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "var" "maximum"
	/// @DnDArgument : "value" "waveInterval * room_speed"
	/// @DnDArgument : "var_1" "progress"
	/// @DnDArgument : "value_1" "alarm[0] / maximum"
	var maximum = waveInterval * room_speed;
	var progress = alarm[0] / maximum;
	

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 13EDC61D
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "color" "$FF00FF00"
	/// @DnDArgument : "alpha" "0"
	draw_set_colour($FF00FF00 & $ffffff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 362B50DC
	/// @DnDInput : 5
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "function" "draw_line_width"
	/// @DnDArgument : "arg" "0"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "global.camW * 2 * progress"
	/// @DnDArgument : "arg_3" "0"
	/// @DnDArgument : "arg_4" "5"
	draw_line_width(0, 0, global.camW * 2 * progress, 0, 5);


}

