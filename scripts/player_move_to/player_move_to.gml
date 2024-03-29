/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BB11A29
/// @DnDInput : 2
/// @DnDArgument : "var" "posX"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "posY"
/// @DnDArgument : "value_1" "argument1"
var posX = argument0;
var posY = argument1;


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0000D8F3
/// @DnDInput : 2
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "var" "playerX"
/// @DnDArgument : "value" "x div 16 * 16 + 8"
/// @DnDArgument : "var_1" "playerY"
/// @DnDArgument : "value_1" "y div 16 * 16 + 8"
with(oPlayer) {
var playerX = x div 16 * 16 + 8;
var playerY = y div 16 * 16 + 8;

}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 14AD7AA6
/// @DnDArgument : "expr" "posX == playerX && posY == playerY"
/// @DnDArgument : "not" "1"
if(!(posX == playerX && posY == playerY))
{
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F60BCC3
	/// @DnDInput : 2
	/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
	/// @DnDParent : 14AD7AA6
	/// @DnDArgument : "var" "grid"
	/// @DnDArgument : "value" "playerGrid"
	/// @DnDArgument : "var_1" "path"
	/// @DnDArgument : "value_1" "playerPath"
	with(oGrid) {
	var grid = playerGrid;
	var path = playerPath;
	
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4F31E217
	/// @DnDInput : 7
	/// @DnDParent : 14AD7AA6
	/// @DnDArgument : "var" "mpPath"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "mp_grid_path"
	/// @DnDArgument : "arg" "grid"
	/// @DnDArgument : "arg_1" "path"
	/// @DnDArgument : "arg_2" "playerX"
	/// @DnDArgument : "arg_3" "playerY"
	/// @DnDArgument : "arg_4" "posX"
	/// @DnDArgument : "arg_5" "posY"
	/// @DnDArgument : "arg_6" "false"
	var mpPath = mp_grid_path(grid, path, playerX, playerY, posX, posY, false);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2B26B43A
	/// @DnDParent : 14AD7AA6
	/// @DnDArgument : "expr" "mpPath"
	if(mpPath)
	{
		
	
			/// @DnDAction : YoYo Games.Paths.Start_Path
			/// @DnDVersion : 1
			/// @DnDHash : 3D846FD7
			/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
			/// @DnDParent : 2B26B43A
			/// @DnDArgument : "path" "path"
			/// @DnDArgument : "speed" "movSpeed"
			with(oPlayer)
			{
				path_start(path, movSpeed, 0, true);
			}
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 19CCD3F7
			/// @DnDParent : 2B26B43A
			/// @DnDArgument : "value" "true"
			return true;
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 541B1ECB
	/// @DnDParent : 14AD7AA6
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 34A8FBCB
			/// @DnDParent : 541B1ECB
			/// @DnDArgument : "value" "false"
			return false;
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 057DD930
/// @DnDArgument : "value" "true"
return true;

