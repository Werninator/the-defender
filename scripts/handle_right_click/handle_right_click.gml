/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 587E26F4
/// @DnDArgument : "expr" "oPlayer.moveEnabled"
if(oPlayer.moveEnabled)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1F742529
	/// @DnDParent : 587E26F4
	/// @DnDArgument : "script" "handle_placement_cancel"
	/// @DnDSaveInfo : "script" "2a034edb-3581-4f0f-a9e6-f01329254d33"
	script_execute(handle_placement_cancel);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4435C7C1
	/// @DnDInput : 2
	/// @DnDParent : 587E26F4
	/// @DnDArgument : "var" "placementX"
	/// @DnDArgument : "value" "mouse_x div 16 * 16"
	/// @DnDArgument : "var_1" "placementY"
	/// @DnDArgument : "value_1" "mouse_y div 16 * 16"
	var placementX = mouse_x div 16 * 16;
	var placementY = mouse_y div 16 * 16;
	

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
	/// @DnDVersion : 1
	/// @DnDHash : 566065C9
	/// @DnDParent : 587E26F4
	/// @DnDArgument : "var" "tileIndexInteractive"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_Interactive""
	/// @DnDArgument : "x" "placementX / 16"
	/// @DnDArgument : "y" "placementY / 16"
	
	{
		var l566065C9_0 = placementX / 16;
		var l566065C9_1 = placementY / 16;
		var l566065C9_2 = layer_tilemap_get_id("Tiles_Interactive");
		var tileIndexInteractive = undefined;
		if(l566065C9_2 > -1) {
			var l566065C9_3 = tilemap_get(l566065C9_2, l566065C9_0, l566065C9_1);
			if(l566065C9_3 > -1) tileIndexInteractive = tile_get_index(l566065C9_3);
		}
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
	/// @DnDVersion : 1
	/// @DnDHash : 1FB7E38B
	/// @DnDParent : 587E26F4
	/// @DnDArgument : "var" "tileIndexBlocked"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""Tiles_BG_Blocked""
	/// @DnDArgument : "x" "placementX / 16"
	/// @DnDArgument : "y" "placementY / 16"
	
	{
		var l1FB7E38B_0 = placementX / 16;
		var l1FB7E38B_1 = placementY / 16;
		var l1FB7E38B_2 = layer_tilemap_get_id("Tiles_BG_Blocked");
		var tileIndexBlocked = undefined;
		if(l1FB7E38B_2 > -1) {
			var l1FB7E38B_3 = tilemap_get(l1FB7E38B_2, l1FB7E38B_0, l1FB7E38B_1);
			if(l1FB7E38B_3 > -1) tileIndexBlocked = tile_get_index(l1FB7E38B_3);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3B669072
	/// @DnDParent : 587E26F4
	/// @DnDArgument : "expr" "tileIndexInteractive != 0 || tileIndexBlocked != 0"
	/// @DnDArgument : "not" "1"
	if(!(tileIndexInteractive != 0 || tileIndexBlocked != 0))
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0EF24EA9
			/// @DnDParent : 3B669072
			/// @DnDArgument : "xpos" "placementX"
			/// @DnDArgument : "ypos" "placementY"
			/// @DnDArgument : "var" "tower"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "oTest"
			/// @DnDSaveInfo : "objectid" "47df638e-484d-4703-9f72-5ba5ef65d4de"
			var tower = instance_create_layer(placementX, placementY, "Instances", oTest); 
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 26485458
			/// @DnDApplyTo : tower
			/// @DnDParent : 3B669072
			/// @DnDArgument : "expr" "place_empty(placementX, placementY) || place_meeting(placementX, placementY, oRoomSwitch)"
			with(tower) var l26485458_0 = place_empty(placementX, placementY) || place_meeting(placementX, placementY, oRoomSwitch);
			if(l26485458_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 171EACD2
						/// @DnDInput : 3
						/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
						/// @DnDParent : 26485458
						/// @DnDArgument : "function" "mp_grid_add_cell"
						/// @DnDArgument : "arg" "playerGrid"
						/// @DnDArgument : "arg_1" "placementX / 16"
						/// @DnDArgument : "arg_2" "placementY / 16"
						with(oGrid) {
							mp_grid_add_cell(playerGrid, placementX / 16, placementY / 16);
						}
			
						/// @DnDAction : YoYo Games.Instances.Destroy_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 79E54E0E
						/// @DnDApplyTo : tower
						/// @DnDParent : 26485458
						with(tower) instance_destroy();
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 2FACE81F
						/// @DnDParent : 26485458
						/// @DnDArgument : "var" "pathCreated"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "script" "handle_left_click_new"
						/// @DnDSaveInfo : "script" "f287a56d-c28f-4b96-ae6f-e6aecb8cf953"
						var pathCreated = script_execute(handle_left_click_new);
			
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 5CA3C6DE
						/// @DnDParent : 26485458
						/// @DnDArgument : "expr" "pathCreated"
						if(pathCreated)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 236656DC
										/// @DnDInput : 3
										/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
										/// @DnDParent : 5CA3C6DE
										/// @DnDArgument : "expr" "placementX"
										/// @DnDArgument : "expr_1" "placementY"
										/// @DnDArgument : "expr_2" "oGame.selectedTowerType"
										/// @DnDArgument : "var" "placeTowerX"
										/// @DnDArgument : "var_1" "placeTowerY"
										/// @DnDArgument : "var_2" "placeType"
										with(oPlayer) {
										placeTowerX = placementX;
										placeTowerY = placementY;
										placeType = oGame.selectedTowerType;
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 0F6336EE
						/// @DnDParent : 26485458
						else
						{
							
						
										/// @DnDAction : YoYo Games.Common.Function_Call
										/// @DnDVersion : 1
										/// @DnDHash : 6FDD4CF8
										/// @DnDInput : 3
										/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
										/// @DnDParent : 0F6336EE
										/// @DnDArgument : "function" "mp_grid_clear_cell"
										/// @DnDArgument : "arg" "playerGrid"
										/// @DnDArgument : "arg_1" "placementX / 16"
										/// @DnDArgument : "arg_2" "placementY / 16"
										with(oGrid) {
											mp_grid_clear_cell(playerGrid, placementX / 16, placementY / 16);
										}
						
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1F32AE55
			/// @DnDParent : 3B669072
			else
			{
				
			
						/// @DnDAction : YoYo Games.Instances.Destroy_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 34B439A8
						/// @DnDApplyTo : tower
						/// @DnDParent : 1F32AE55
						with(tower) instance_destroy();
			
			
			}
	
	
	}


}

