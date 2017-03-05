/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0BB1669E
/// @DnDArgument : "script" "log"
/// @DnDArgument : "arg" "direction"
/// @DnDSaveInfo : "script" "fe7f48e2-4297-4a25-9287-9acde4e5b7f3"
script_execute(log, direction);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 17B5ED70
/// @DnDArgument : "var" "isMoving"
/// @DnDArgument : "value" "path_index != -1"
var isMoving = path_index != -1;


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1D71943B
/// @DnDArgument : "expr" "gatherX != -1 && gatherY != -1 && !isMoving"
if(gatherX != -1 && gatherY != -1 && !isMoving)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 36892D1A
	/// @DnDInput : 2
	/// @DnDParent : 1D71943B
	/// @DnDArgument : "script" "player_gather"
	/// @DnDArgument : "arg" "gatherX"
	/// @DnDArgument : "arg_1" "gatherY"
	/// @DnDSaveInfo : "script" "0272f058-a1d2-4f3c-81c8-997c82a76abf"
	script_execute(player_gather, gatherX, gatherY);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 585A9C59
	/// @DnDInput : 2
	/// @DnDParent : 1D71943B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "gatherX"
	/// @DnDArgument : "var_1" "gatherY"
	gatherX = -1;
	gatherY = -1;
	


}

