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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 21D9A549
/// @DnDArgument : "expr" "tileIndex"
if(tileIndex)
{
	

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 45FB3C7D
	/// @DnDParent : 21D9A549
	/// @DnDArgument : "expr" "tileIndex"
	var l45FB3C7D_0;
	l45FB3C7D_0 = tileIndex;
	switch(l45FB3C7D_0)
	{
		
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 47D88EB5
			/// @DnDParent : 45FB3C7D
			/// @DnDArgument : "const" "6"
			case 6:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 5DF9D8FD
						/// @DnDParent : 47D88EB5
						/// @DnDArgument : "script" "log"
						/// @DnDArgument : "arg" ""stein""
						/// @DnDSaveInfo : "script" "fe7f48e2-4297-4a25-9287-9acde4e5b7f3"
						script_execute(log, "stein");
			
			
				}
				break;
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 33650E65
			/// @DnDParent : 45FB3C7D
			/// @DnDArgument : "const" "7"
			case 7:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 4BD88384
						/// @DnDParent : 33650E65
						/// @DnDArgument : "script" "log"
						/// @DnDArgument : "arg" ""holz""
						/// @DnDSaveInfo : "script" "fe7f48e2-4297-4a25-9287-9acde4e5b7f3"
						script_execute(log, "holz");
			
			
				}
				break;
	
	
	}

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


}

