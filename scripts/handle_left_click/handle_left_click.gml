/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1FCED72C
/// @DnDArgument : "expr" "oPlayer.canMove && oPlayer.moveEnabled"
if(oPlayer.canMove && oPlayer.moveEnabled)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C163A48
	/// @DnDInput : 2
	/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
	/// @DnDParent : 1FCED72C
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
	/// @DnDInput : 4
	/// @DnDParent : 1FCED72C
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
	/// @DnDHash : 5FEBB078
	/// @DnDInput : 2
	/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
	/// @DnDParent : 1FCED72C
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
	/// @DnDParent : 1FCED72C
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

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 309340E7
	/// @DnDParent : 1FCED72C
	/// @DnDArgument : "expr" "tileIndex && (abs(mouseCellX - playerCellX) > 1 || abs(mouseCellY - playerCellY) > 1) || !tileIndex"
	if(tileIndex && (abs(mouseCellX - playerCellX) > 1 || abs(mouseCellY - playerCellY) > 1) || !tileIndex)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 4B1B70E3
			/// @DnDParent : 309340E7
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "i < array_length_1d(tryX)"
			/// @DnDArgument : "expr" "i++"
			for(var i = 0; i < array_length_1d(tryX); i++) {
				
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 1AD06459
						/// @DnDInput : 2
						/// @DnDParent : 4B1B70E3
						/// @DnDArgument : "var" "canMove"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "script" "player_move_to"
						/// @DnDArgument : "arg" "mouseCellX * 16 + 8 + tryX[i]"
						/// @DnDArgument : "arg_1" "mouseCellY * 16 + 8 + tryY[i]"
						/// @DnDSaveInfo : "script" "2d1d8f18-bc61-4d16-be3a-94f7cbb3d5d4"
						var canMove = script_execute(player_move_to, mouseCellX * 16 + 8 + tryX[i], mouseCellY * 16 + 8 + tryY[i]);
			
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 41B026D7
						/// @DnDParent : 4B1B70E3
						/// @DnDArgument : "expr" "canMove"
						if(canMove)
						{
							
						
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 5B392098
										/// @DnDParent : 41B026D7
										break;
						
						
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 51F28619
	/// @DnDParent : 1FCED72C
	/// @DnDArgument : "expr" "tileIndex && (abs(mouseCellX - playerCellX) <= 1 && abs(mouseCellY - playerCellY) <= 1 || canMove)"
	if(tileIndex && (abs(mouseCellX - playerCellX) <= 1 && abs(mouseCellY - playerCellY) <= 1 || canMove))
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

