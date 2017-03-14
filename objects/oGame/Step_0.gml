/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6CC7063D
/// @DnDArgument : "expr" "room != rIntro"
if(room != rIntro)
{
	

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3CFF6CA6
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "button" "mb_left && oPlayer.canMove"
	var l3CFF6CA6_0;
	l3CFF6CA6_0 = mouse_check_button_pressed(mb_left && oPlayer.canMove);
	if (l3CFF6CA6_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 202179DE
			/// @DnDInput : 2
			/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
			/// @DnDParent : 3CFF6CA6
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
			/// @DnDHash : 140AA96D
			/// @DnDInput : 4
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "var" "mouseCellX"
			/// @DnDArgument : "value" "mouse_x div 16"
			/// @DnDArgument : "var_1" "mouseCellY"
			/// @DnDArgument : "value_1" "mouse_y div 16"
			/// @DnDArgument : "var_2" "tryX"
			/// @DnDArgument : "value_2" "[0, 0, 0, 16, -16]"
			/// @DnDArgument : "var_3" "tryY"
			/// @DnDArgument : "value_3" "[0, -16, 16, 0, 0]"
			var mouseCellX = mouse_x div 16;
			var mouseCellY = mouse_y div 16;
			var tryX = [0, 0, 0, 16, -16];
			var tryY = [0, -16, 16, 0, 0];
			
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4815CB8F
			/// @DnDInput : 2
			/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
			/// @DnDParent : 3CFF6CA6
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
			/// @DnDHash : 30C8ADC5
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "var" "tileIndex"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "layername" ""Tiles_Interactive""
			/// @DnDArgument : "x" "mouseCellX"
			/// @DnDArgument : "y" "mouseCellY"
			
			{
				var l30C8ADC5_0 = mouseCellX;
				var l30C8ADC5_1 = mouseCellY;
				var l30C8ADC5_2 = layer_tilemap_get_id("Tiles_Interactive");
				var tileIndex = undefined;
				if(l30C8ADC5_2 > -1) {
					var l30C8ADC5_3 = tilemap_get(l30C8ADC5_2, l30C8ADC5_0, l30C8ADC5_1);
					if(l30C8ADC5_3 > -1) tileIndex = tile_get_index(l30C8ADC5_3);
				}
			}
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 33D5B06C
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "expr" "tileIndex && (abs(mouseCellX - playerCellX) > 1 || abs(mouseCellY - playerCellY) > 1) || !tileIndex"
			if(tileIndex && (abs(mouseCellX - playerCellX) > 1 || abs(mouseCellY - playerCellY) > 1) || !tileIndex)
			{
				
			
						/// @DnDAction : YoYo Games.Loops.For_Loop
						/// @DnDVersion : 1
						/// @DnDHash : 1BB34005
						/// @DnDParent : 33D5B06C
						/// @DnDArgument : "init_temp" "1"
						/// @DnDArgument : "cond" "i < array_length_1d(tryX)"
						/// @DnDArgument : "expr" "i++"
						for(var i = 0; i < array_length_1d(tryX); i++) {
							
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 5623DB76
										/// @DnDInput : 2
										/// @DnDParent : 1BB34005
										/// @DnDArgument : "var" "canMove"
										/// @DnDArgument : "var_temp" "1"
										/// @DnDArgument : "script" "player_move_to"
										/// @DnDArgument : "arg" "mouseCellX * 16 + 8 + tryX[i]"
										/// @DnDArgument : "arg_1" "mouseCellY * 16 + 8 + tryY[i]"
										/// @DnDSaveInfo : "script" "2d1d8f18-bc61-4d16-be3a-94f7cbb3d5d4"
										var canMove = script_execute(player_move_to, mouseCellX * 16 + 8 + tryX[i], mouseCellY * 16 + 8 + tryY[i]);
						
										/// @DnDAction : YoYo Games.Common.If_Expression
										/// @DnDVersion : 1
										/// @DnDHash : 3CEC999A
										/// @DnDParent : 1BB34005
										/// @DnDArgument : "expr" "canMove"
										if(canMove)
										{
											
										
															/// @DnDAction : YoYo Games.Loops.Break
															/// @DnDVersion : 1
															/// @DnDHash : 2E54C932
															/// @DnDParent : 3CEC999A
															break;
										
										
										}
						
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 42757D16
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "expr" "tileIndex && (abs(mouseCellX - playerCellX) <= 1 && abs(mouseCellY - playerCellY) <= 1 || canMove)"
			if(tileIndex && (abs(mouseCellX - playerCellX) <= 1 && abs(mouseCellY - playerCellY) <= 1 || canMove))
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7393CAB6
						/// @DnDInput : 2
						/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
						/// @DnDParent : 42757D16
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

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 384F62BB
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "button" "mb_right"
	var l384F62BB_0;
	l384F62BB_0 = mouse_check_button_pressed(mb_right);
	if (l384F62BB_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F4D8776
			/// @DnDInput : 2
			/// @DnDParent : 384F62BB
			/// @DnDArgument : "var" "placementX"
			/// @DnDArgument : "value" "mouse_x div 16 * 16"
			/// @DnDArgument : "var_1" "placementY"
			/// @DnDArgument : "value_1" "mouse_y div 16 * 16"
			var placementX = mouse_x div 16 * 16;
			var placementY = mouse_y div 16 * 16;
			
	
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
			/// @DnDVersion : 1
			/// @DnDHash : 5C918488
			/// @DnDParent : 384F62BB
			/// @DnDArgument : "var" "tileIndexInteractive"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "layername" ""Tiles_Interactive""
			/// @DnDArgument : "x" "placementX / 16"
			/// @DnDArgument : "y" "placementY / 16"
			
			{
				var l5C918488_0 = placementX / 16;
				var l5C918488_1 = placementY / 16;
				var l5C918488_2 = layer_tilemap_get_id("Tiles_Interactive");
				var tileIndexInteractive = undefined;
				if(l5C918488_2 > -1) {
					var l5C918488_3 = tilemap_get(l5C918488_2, l5C918488_0, l5C918488_1);
					if(l5C918488_3 > -1) tileIndexInteractive = tile_get_index(l5C918488_3);
				}
			}
	
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
			/// @DnDVersion : 1
			/// @DnDHash : 7A86CE0A
			/// @DnDParent : 384F62BB
			/// @DnDArgument : "var" "tileIndexBlocked"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "layername" ""Tiles_BG_Blocked""
			/// @DnDArgument : "x" "placementX / 16"
			/// @DnDArgument : "y" "placementY / 16"
			
			{
				var l7A86CE0A_0 = placementX / 16;
				var l7A86CE0A_1 = placementY / 16;
				var l7A86CE0A_2 = layer_tilemap_get_id("Tiles_BG_Blocked");
				var tileIndexBlocked = undefined;
				if(l7A86CE0A_2 > -1) {
					var l7A86CE0A_3 = tilemap_get(l7A86CE0A_2, l7A86CE0A_0, l7A86CE0A_1);
					if(l7A86CE0A_3 > -1) tileIndexBlocked = tile_get_index(l7A86CE0A_3);
				}
			}
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 30FD337C
			/// @DnDParent : 384F62BB
			/// @DnDArgument : "expr" "tileIndexInteractive != 0 || tileIndexBlocked != 0"
			/// @DnDArgument : "not" "1"
			if(!(tileIndexInteractive != 0 || tileIndexBlocked != 0))
			{
				
			
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 16164FCC
						/// @DnDParent : 30FD337C
						/// @DnDArgument : "xpos" "placementX"
						/// @DnDArgument : "ypos" "placementY"
						/// @DnDArgument : "var" "tower"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "oTower"
						/// @DnDSaveInfo : "objectid" "a6a4ff80-c096-4ee4-a4f9-b0447646c467"
						var tower = instance_create_layer(placementX, placementY, "Instances", oTower); 
			
						/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
						/// @DnDVersion : 1
						/// @DnDHash : 6992A3C1
						/// @DnDApplyTo : tower
						/// @DnDParent : 30FD337C
						/// @DnDArgument : "x" "placementX"
						/// @DnDArgument : "y" "placementY"
						/// @DnDArgument : "not" "1"
						with(tower)
						{
							var l6992A3C1_0 = placementX;
							var l6992A3C1_1 = placementY;
							var l6992A3C1_2 = place_empty(l6992A3C1_0, l6992A3C1_1);
						}
						
						if (l6992A3C1_2)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Function_Call
										/// @DnDVersion : 1
										/// @DnDHash : 07F5FAD6
										/// @DnDInput : 3
										/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
										/// @DnDParent : 6992A3C1
										/// @DnDArgument : "function" "mp_grid_add_instances"
										/// @DnDArgument : "arg" "playerGrid"
										/// @DnDArgument : "arg_1" "oTower"
										/// @DnDArgument : "arg_2" "false"
										with(oGrid) {
											mp_grid_add_instances(playerGrid, oTower, false);
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 590CD6AE
						/// @DnDParent : 30FD337C
						else
						{
							
						
										/// @DnDAction : YoYo Games.Instances.Destroy_Instance
										/// @DnDVersion : 1
										/// @DnDHash : 12CE10B0
										/// @DnDApplyTo : tower
										/// @DnDParent : 590CD6AE
										with(tower) instance_destroy();
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 1E2EC750
										/// @DnDParent : 590CD6AE
										/// @DnDArgument : "script" "log"
										/// @DnDArgument : "arg" ""Es ist was im Weg!""
										/// @DnDSaveInfo : "script" "fe7f48e2-4297-4a25-9287-9acde4e5b7f3"
										script_execute(log, "Es ist was im Weg!");
						
						
						}
			
			
			}
	
	
	}


}

