/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 779E6883
/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
/// @DnDArgument : "expr" "playerGrid == undefined"
with(oGrid) var l779E6883_0 = playerGrid == undefined;
if(l779E6883_0)
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 0AEFCD90
	/// @DnDParent : 779E6883
	/// @DnDArgument : "value" "false"
	return false;


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C163A48
/// @DnDInput : 2
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "var" "gatherX"
/// @DnDArgument : "var_1" "gatherY"
with(oPlayer) {
gatherX = -1;
gatherY = -1;

}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 75287188
/// @DnDInput : 2
/// @DnDArgument : "var" "mouseCellX"
/// @DnDArgument : "value" "mouse_x div 16"
/// @DnDArgument : "var_1" "mouseCellY"
/// @DnDArgument : "value_1" "mouse_y div 16"
var mouseCellX = mouse_x div 16;
var mouseCellY = mouse_y div 16;


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FEBB078
/// @DnDInput : 2
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "var" "playerCellX"
/// @DnDArgument : "value" "x div 16"
/// @DnDArgument : "var_1" "playerCellY"
/// @DnDArgument : "value_1" "y div 16"
with(oPlayer) {
var playerCellX = x div 16;
var playerCellY = y div 16;

}

/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
/// @DnDVersion : 1
/// @DnDHash : 0688A660
/// @DnDArgument : "var" "tileIndex"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "layername" ""Tiles_Interactive""
/// @DnDArgument : "x" "mouseCellX"
/// @DnDArgument : "y" "mouseCellY"

{
	var l0688A660_0 = mouseCellX;
	var l0688A660_1 = mouseCellY;
	var l0688A660_2 = layer_tilemap_get_id("Tiles_Interactive");
	var tileIndex = undefined;
	if(l0688A660_2 > -1) {
		var l0688A660_3 = tilemap_get(l0688A660_2, l0688A660_0, l0688A660_1);
		if(l0688A660_3 > -1) tileIndex = tile_get_index(l0688A660_3);
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 628B64DB
/// @DnDInput : 3
/// @DnDArgument : "var" "cellDistX"
/// @DnDArgument : "value" "abs(mouseCellX - playerCellX)"
/// @DnDArgument : "var_1" "cellDistY"
/// @DnDArgument : "value_1" "abs(mouseCellY - playerCellY)"
/// @DnDArgument : "var_2" "inReach"
/// @DnDArgument : "value_2" "cellDistX <= 1 && cellDistY <= 1"
var cellDistX = abs(mouseCellX - playerCellX);
var cellDistY = abs(mouseCellY - playerCellY);
var inReach = cellDistX <= 1 && cellDistY <= 1;


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F3D5890
/// @DnDArgument : "code" "/// @desc Generate Path$(13_10)$(13_10)with oGrid {$(13_10)	var grid = playerGrid;$(13_10)	var path = playerPath;$(13_10)}$(13_10)$(13_10)var isBlocked = mp_grid_get_cell(grid, mouseCellX, mouseCellY) == -1;$(13_10)$(13_10)// Falls etwas im Weg ist, nehmen wir den blocked-cell vorerst raus$(13_10)if isBlocked$(13_10)	mp_grid_clear_cell(grid, mouseCellX, mouseCellY);$(13_10)$(13_10)// Einen neuen Path generieren lassen$(13_10)var pathResult =  mp_grid_path($(13_10)	grid,$(13_10)	path,$(13_10)	playerCellX * 16 + 8,$(13_10)	playerCellY * 16 + 8,$(13_10)	mouseCellX * 16 + 8,$(13_10)	mouseCellY * 16 + 8,$(13_10)	false$(13_10));$(13_10)$(13_10)// Wir adden den cell wieder$(13_10)if isBlocked$(13_10)	mp_grid_add_cell(grid, mouseCellX, mouseCellY);"

{
	/// @desc Generate Path

with oGrid {
	var grid = playerGrid;
	var path = playerPath;
}

var isBlocked = mp_grid_get_cell(grid, mouseCellX, mouseCellY) == -1;

// Falls etwas im Weg ist, nehmen wir den blocked-cell vorerst raus
if isBlocked
	mp_grid_clear_cell(grid, mouseCellX, mouseCellY);

// Einen neuen Path generieren lassen
var pathResult =  mp_grid_path(
	grid,
	path,
	playerCellX * 16 + 8,
	playerCellY * 16 + 8,
	mouseCellX * 16 + 8,
	mouseCellY * 16 + 8,
	false
);

// Wir adden den cell wieder
if isBlocked
	mp_grid_add_cell(grid, mouseCellX, mouseCellY);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6C344C1F
/// @DnDArgument : "expr" "pathResult"
if(pathResult)
{
	

	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1
	/// @DnDHash : 4CC8841C
	/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
	/// @DnDParent : 6C344C1F
	/// @DnDArgument : "path" "path"
	/// @DnDArgument : "speed" "movSpeed"
	with(oPlayer)
	{
		path_start(path, movSpeed, 0, true);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 51F28619
	/// @DnDParent : 6C344C1F
	/// @DnDArgument : "expr" "tileIndex"
	if(tileIndex)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4C105B0B
			/// @DnDInput : 2
			/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
			/// @DnDParent : 51F28619
			/// @DnDArgument : "expr" "mouseCellX"
			/// @DnDArgument : "expr_1" "mouseCellY"
			/// @DnDArgument : "var" "gatherX"
			/// @DnDArgument : "var_1" "gatherY"
			with(oPlayer) {
			gatherX = mouseCellX;
			gatherY = mouseCellY;
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 51AD6652
/// @DnDArgument : "value" "pathResult"
return pathResult;

