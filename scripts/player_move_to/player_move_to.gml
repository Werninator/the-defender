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

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 00E60ED3
	/// @DnDParent : 14AD7AA6
	/// @DnDArgument : "code" "var mpPath = mp_grid_path(grid, path, playerX, playerY, posX, posY, false);"
	
	{
		var mpPath = mp_grid_path(grid, path, playerX, playerY, posX, posY, false);
	}

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
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4CFA9727
	/// @DnDParent : 14AD7AA6
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 588F3BAE
			/// @DnDParent : 4CFA9727
			/// @DnDArgument : "script" "log"
			/// @DnDArgument : "arg" ""Kein Path konnte gefunden werden""
			/// @DnDSaveInfo : "script" "fe7f48e2-4297-4a25-9287-9acde4e5b7f3"
			script_execute(log, "Kein Path konnte gefunden werden");
	
	
	}


}

