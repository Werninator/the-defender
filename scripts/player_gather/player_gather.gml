/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 45DAFFF6
/// @DnDInput : 2
/// @DnDArgument : "var" "cellX"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "cellY"
/// @DnDArgument : "value_1" "argument1"
var cellX = argument0;
var cellY = argument1;


/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
/// @DnDVersion : 1
/// @DnDHash : 47526AC6
/// @DnDArgument : "var" "tileIndex"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "layername" ""Tiles_Interactive""
/// @DnDArgument : "x" "cellX"
/// @DnDArgument : "y" "cellY"

{
	var l47526AC6_0 = cellX;
	var l47526AC6_1 = cellY;
	var l47526AC6_2 = layer_tilemap_get_id("Tiles_Interactive");
	var tileIndex = undefined;
	if(l47526AC6_2 > -1) {
		var l47526AC6_3 = tilemap_get(l47526AC6_2, l47526AC6_0, l47526AC6_1);
		if(l47526AC6_3 > -1) tileIndex = tile_get_index(l47526AC6_3);
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 63E5BE7B
/// @DnDArgument : "xpos" "cellX * 16"
/// @DnDArgument : "ypos" "cellY * 16"
/// @DnDArgument : "var" "const"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "oConstruct"
/// @DnDArgument : "layer" ""Instances_Construct""
/// @DnDSaveInfo : "objectid" "a529de10-9fa0-498c-9e54-c2afa27a1065"
var const = instance_create_layer(cellX * 16, cellY * 16, "Instances_Construct", oConstruct); 

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4332CA00
/// @DnDInput : 2
/// @DnDApplyTo : const
/// @DnDArgument : "expr" "collect_material"
/// @DnDArgument : "expr_1" "tileIndex"
/// @DnDArgument : "var" "scriptToCall"
/// @DnDArgument : "var_1" "arg"
with(const) {
scriptToCall = collect_material;
arg = tileIndex;

}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 21D9A549
/// @DnDArgument : "expr" "tileIndex"
if(tileIndex)
{
	

	/// @DnDAction : YoYo Games.Tiles.Tile_Set_In_Cell
	/// @DnDVersion : 1
	/// @DnDHash : 24D1B3A2
	/// @DnDParent : 21D9A549
	/// @DnDArgument : "layername" ""Tiles_Interactive""
	/// @DnDArgument : "x" "cellX"
	/// @DnDArgument : "y" "cellY"
	
	{
		var l24D1B3A2_0 = cellX;
		var l24D1B3A2_1 = cellY;
		var l24D1B3A2_2 = layer_tilemap_get_id("Tiles_Interactive");
		if(l24D1B3A2_2 > -1) {
			var l24D1B3A2_3 = tilemap_get(l24D1B3A2_2, l24D1B3A2_0, l24D1B3A2_1);
			if(l24D1B3A2_3 > -1) {
				l24D1B3A2_3 = tile_set_index(l24D1B3A2_3, 0);
				if(l24D1B3A2_3 > -1) tilemap_set(l24D1B3A2_2, l24D1B3A2_3, l24D1B3A2_0, l24D1B3A2_1);
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23B07A32
	/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
	/// @DnDParent : 21D9A549
	/// @DnDArgument : "var" "grid"
	/// @DnDArgument : "value" "playerGrid"
	with(oGrid) {
	var grid = playerGrid;
	
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4EEDC9C0
	/// @DnDInput : 3
	/// @DnDParent : 21D9A549
	/// @DnDArgument : "function" "mp_grid_clear_cell"
	/// @DnDArgument : "arg" "grid"
	/// @DnDArgument : "arg_1" "cellX"
	/// @DnDArgument : "arg_2" "cellY"
	mp_grid_clear_cell(grid, cellX, cellY);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 07A06877
	/// @DnDParent : 21D9A549
	/// @DnDArgument : "script" "generate_new_enemy_paths"
	/// @DnDSaveInfo : "script" "29caa0b4-37ad-4ff1-9fb2-6042f78a0671"
	script_execute(generate_new_enemy_paths);


}

