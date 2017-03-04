/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 115C08FA
/// @DnDInput : 3
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "var" "isMoving"
/// @DnDArgument : "value" "path_index != -1"
/// @DnDArgument : "var_1" "playerX"
/// @DnDArgument : "value_1" "x"
/// @DnDArgument : "var_2" "playerY"
/// @DnDArgument : "value_2" "y"
with(oPlayer) {
var isMoving = path_index != -1;
var playerX = x;
var playerY = y;

}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 581F3CDB
/// @DnDArgument : "expr" "isMoving"
/// @DnDArgument : "not" "1"
if(!(isMoving))
{
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 73B0DEA4
	/// @DnDInput : 2
	/// @DnDParent : 581F3CDB
	/// @DnDArgument : "function" "player_move_to"
	/// @DnDArgument : "arg" "playerX + addX"
	/// @DnDArgument : "arg_1" "playerY + addY"
	player_move_to(playerX + addX, playerY + addY);


}

