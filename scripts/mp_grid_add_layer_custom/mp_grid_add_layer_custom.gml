/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D673DF4
/// @DnDInput : 5
/// @DnDArgument : "var" "grid"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "layerName"
/// @DnDArgument : "value_1" "argument1"
/// @DnDArgument : "var_2" "roomCellsX"
/// @DnDArgument : "value_2" "argument2"
/// @DnDArgument : "var_3" "roomCellsY"
/// @DnDArgument : "value_3" "argument3"
/// @DnDArgument : "var_4" "addIndex"
/// @DnDArgument : "value_4" "argument4"
var grid = argument0;
var layerName = argument1;
var roomCellsX = argument2;
var roomCellsY = argument3;
var addIndex = argument4;


/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 46F68ABE
/// @DnDArgument : "var" "grid"
/// @DnDArgument : "not" "1"
if(grid != undefined)
{
	

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 5E4C7A03
	/// @DnDParent : 46F68ABE
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < roomCellsY "
	/// @DnDArgument : "expr" "i++"
	for(var i = 0; i < roomCellsY ; i++) {
		
	
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 0C2CA4A8
			/// @DnDParent : 5E4C7A03
			/// @DnDArgument : "init" "j = 0"
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "j < roomCellsX "
			/// @DnDArgument : "expr" "j++"
			for(var j = 0; j < roomCellsX ; j++) {
				
			
						/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
						/// @DnDVersion : 1
						/// @DnDHash : 1BAE61AB
						/// @DnDParent : 0C2CA4A8
						/// @DnDArgument : "var" "tileIndex"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "layername" "layerName"
						/// @DnDArgument : "x" "j"
						/// @DnDArgument : "y" "i"
						
						{
							var l1BAE61AB_0 = j;
							var l1BAE61AB_1 = i;
							var l1BAE61AB_2 = layer_tilemap_get_id(layerName);
							var tileIndex = undefined;
							if(l1BAE61AB_2 > -1) {
								var l1BAE61AB_3 = tilemap_get(l1BAE61AB_2, l1BAE61AB_0, l1BAE61AB_1);
								if(l1BAE61AB_3 > -1) tileIndex = tile_get_index(l1BAE61AB_3);
							}
						}
			
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 46B6CB97
						/// @DnDParent : 0C2CA4A8
						/// @DnDArgument : "expr" "tileIndex == addIndex"
						if(tileIndex == addIndex)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Execute_Code
										/// @DnDVersion : 1
										/// @DnDHash : 0569EF89
										/// @DnDParent : 46B6CB97
										/// @DnDArgument : "code" "/// @description Set blocked grid parts$(13_10)mp_grid_add_cell(grid, j, i)"
										
										{
											/// @description Set blocked grid parts
										mp_grid_add_cell(grid, j, i)
										}
						
						
						}
			
			
			}
	
	
	}


}

