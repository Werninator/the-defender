/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28A6A833
/// @DnDArgument : "code" "var newCell = [$(13_10)	x div 16,$(13_10)	y div 16$(13_10)];$(13_10)$(13_10)if !array_equals(currentCell, newCell) {$(13_10)	cellBefore = currentCell;$(13_10)	currentCell = newCell;$(13_10)}$(13_10)$(13_10)with oGrid$(13_10)	var grid = playerGrid;$(13_10)$(13_10)// Kann dauern, bis der grid gesetzt wird$(13_10)var isBlocked = grid != undefined$(13_10)	? mp_grid_get_cell(grid, currentCell[0], currentCell[1]) == -1$(13_10)	: false;"

{
	var newCell = [
	x div 16,
	y div 16
];

if !array_equals(currentCell, newCell) {
	cellBefore = currentCell;
	currentCell = newCell;
}

with oGrid
	var grid = playerGrid;

// Kann dauern, bis der grid gesetzt wird
var isBlocked = grid != undefined
	? mp_grid_get_cell(grid, currentCell[0], currentCell[1]) == -1
	: false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6DD54039
/// @DnDArgument : "expr" "isBlocked"
if(isBlocked)
{
	

	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 3496C73C
	/// @DnDParent : 6DD54039
	
	{
		path_end();
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3E54F4F9
	/// @DnDParent : 6DD54039
	/// @DnDArgument : "script" "player_ends_path"
	/// @DnDSaveInfo : "script" "27f5e7d7-e8c8-4da5-904e-c61cc83818da"
	script_execute(player_ends_path);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 040621B2
	/// @DnDInput : 3
	/// @DnDParent : 6DD54039
	/// @DnDArgument : "expr" "cellBefore"
	/// @DnDArgument : "expr_1" "currentCell[0] * 16 + 8"
	/// @DnDArgument : "expr_2" "currentCell[1] * 16 + 8"
	/// @DnDArgument : "var" "currentCell"
	/// @DnDArgument : "var_1" "x"
	/// @DnDArgument : "var_2" "y"
	currentCell = cellBefore;
	x = currentCell[0] * 16 + 8;
	y = currentCell[1] * 16 + 8;
	


}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FBFEA31
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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 09C3CD43
/// @DnDArgument : "expr" "placeTowerX != -1 && placeTowerY != -1 && !isMoving"
if(placeTowerX != -1 && placeTowerY != -1 && !isMoving)
{
	

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C5168BD
	/// @DnDParent : 09C3CD43
	/// @DnDArgument : "xpos" "placeTowerX"
	/// @DnDArgument : "ypos" "placeTowerY"
	/// @DnDArgument : "var" "const"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "oConstruct"
	/// @DnDArgument : "layer" ""Instances_Construct""
	/// @DnDSaveInfo : "objectid" "a529de10-9fa0-498c-9e54-c2afa27a1065"
	var const = instance_create_layer(placeTowerX, placeTowerY, "Instances_Construct", oConstruct); 

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E87810F
	/// @DnDInput : 2
	/// @DnDApplyTo : const
	/// @DnDParent : 09C3CD43
	/// @DnDArgument : "expr" "spawn_tower"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "scriptToCall"
	/// @DnDArgument : "var_1" "argPos"
	with(const) {
	scriptToCall = spawn_tower;
	argPos = true;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AFACF23
	/// @DnDInput : 2
	/// @DnDParent : 09C3CD43
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "placeTowerX"
	/// @DnDArgument : "var_1" "placeTowerY"
	placeTowerX = -1;
	placeTowerY = -1;
	


}

