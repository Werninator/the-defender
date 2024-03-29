/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7CE78B97
/// @DnDArgument : "expr" "room != rIntro"
if(room != rIntro)
{
	

	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 7EB11546
	/// @DnDParent : 7CE78B97
	/// @DnDArgument : "var" "playerGrid"
	if(playerGrid == undefined)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F1687BB
			/// @DnDInput : 2
			/// @DnDParent : 7EB11546
			/// @DnDArgument : "var" "roomCellsX"
			/// @DnDArgument : "value" "room_width div 16"
			/// @DnDArgument : "var_1" "roomCellsY"
			/// @DnDArgument : "value_1" "room_height div 16"
			var roomCellsX = room_width div 16;
			var roomCellsY = room_height div 16;
			
	
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 0FC6E07F
			/// @DnDInput : 6
			/// @DnDParent : 7EB11546
			/// @DnDArgument : "var" "playerGrid"
			/// @DnDArgument : "function" "mp_grid_create"
			/// @DnDArgument : "arg" "0"
			/// @DnDArgument : "arg_1" "0"
			/// @DnDArgument : "arg_2" "roomCellsX"
			/// @DnDArgument : "arg_3" "roomCellsY"
			/// @DnDArgument : "arg_4" "16"
			/// @DnDArgument : "arg_5" "16"
			playerGrid = mp_grid_create(0, 0, roomCellsX, roomCellsY, 16, 16);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3F0F2744
			/// @DnDInput : 4
			/// @DnDParent : 7EB11546
			/// @DnDArgument : "script" "mp_grid_add_layer"
			/// @DnDArgument : "arg" "playerGrid"
			/// @DnDArgument : "arg_1" ""Tiles_Interactive""
			/// @DnDArgument : "arg_2" "roomCellsX"
			/// @DnDArgument : "arg_3" "roomCellsY"
			/// @DnDSaveInfo : "script" "5b3d4a92-09b5-418e-a4ae-9eb3d67850c5"
			script_execute(mp_grid_add_layer, playerGrid, "Tiles_Interactive", roomCellsX, roomCellsY);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3A0A455B
			/// @DnDInput : 4
			/// @DnDParent : 7EB11546
			/// @DnDArgument : "script" "mp_grid_add_layer"
			/// @DnDArgument : "arg" "playerGrid"
			/// @DnDArgument : "arg_1" ""Tiles_BG_Blocked""
			/// @DnDArgument : "arg_2" "roomCellsX"
			/// @DnDArgument : "arg_3" "roomCellsY"
			/// @DnDSaveInfo : "script" "5b3d4a92-09b5-418e-a4ae-9eb3d67850c5"
			script_execute(mp_grid_add_layer, playerGrid, "Tiles_BG_Blocked", roomCellsX, roomCellsY);
	
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 5BB7AA86
			/// @DnDInput : 3
			/// @DnDParent : 7EB11546
			/// @DnDArgument : "function" "mp_grid_add_instances"
			/// @DnDArgument : "arg" "playerGrid"
			/// @DnDArgument : "arg_1" "oTower"
			/// @DnDArgument : "arg_2" "false"
			mp_grid_add_instances(playerGrid, oTower, false);
	
	
	}


}

