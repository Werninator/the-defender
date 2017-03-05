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
	var l3CFF6CA6_0;
	l3CFF6CA6_0 = mouse_check_button_pressed(mb_left);
	if (l3CFF6CA6_0)
	{
		
	
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
			/// @DnDHash : 5339005A
			/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "expr" "tileIndex && (abs(mouseCellX - playerCellX) > 1 || abs(mouseCellY - playerCellY) > 1) || !tileIndex"
			with(oPlayer) var l5339005A_0 = tileIndex && (abs(mouseCellX - playerCellX) > 1 || abs(mouseCellY - playerCellY) > 1) || !tileIndex;
			if(l5339005A_0)
			{
				
			
						/// @DnDAction : YoYo Games.Loops.For_Loop
						/// @DnDVersion : 1
						/// @DnDHash : 1BB34005
						/// @DnDParent : 5339005A
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
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7393CAB6
			/// @DnDInput : 2
			/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
			/// @DnDParent : 3CFF6CA6
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

