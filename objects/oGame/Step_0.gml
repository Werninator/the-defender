/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6CC7063D
/// @DnDArgument : "expr" "room != rIntro"
if(room != rIntro)
{
	

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2B59ADA1
	/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "expr" "mouse_wheel_down() && showGrid "
	with(oGrid) var l2B59ADA1_0 = mouse_wheel_down() && showGrid ;
	if(l2B59ADA1_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A827DD8
			/// @DnDParent : 2B59ADA1
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "selectedTowerType"
			selectedTowerType += 1;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74377B9F
			/// @DnDParent : 2B59ADA1
			/// @DnDArgument : "expr" "selectedTowerType % 3"
			/// @DnDArgument : "var" "selectedTowerType"
			selectedTowerType = selectedTowerType % 3;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5894625B
	/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "expr" "mouse_wheel_up() && showGrid "
	with(oGrid) var l5894625B_0 = mouse_wheel_up() && showGrid ;
	if(l5894625B_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79FBAE16
			/// @DnDParent : 5894625B
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "selectedTowerType"
			selectedTowerType += -1;
			
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5CECFE79
			/// @DnDParent : 5894625B
			/// @DnDArgument : "expr" "selectedTowerType == -1"
			if(selectedTowerType == -1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4E10B597
						/// @DnDParent : 5CECFE79
						/// @DnDArgument : "expr" "2"
						/// @DnDArgument : "var" "selectedTowerType"
						selectedTowerType = 2;
						
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3CFF6CA6
	/// @DnDParent : 6CC7063D
	var l3CFF6CA6_0;
	l3CFF6CA6_0 = mouse_check_button_pressed(mb_left);
	if (l3CFF6CA6_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 34AA51A9
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "expr" "oPlayer.canMove && oPlayer.moveEnabled"
			if(oPlayer.canMove && oPlayer.moveEnabled)
			{
				
			
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 7181F360
						/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
						/// @DnDParent : 34AA51A9
						/// @DnDArgument : "expr" "showGrid && check_resources()"
						with(oGrid) var l7181F360_0 = showGrid && check_resources();
						if(l7181F360_0)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 2ADF2A06
										/// @DnDParent : 7181F360
										/// @DnDArgument : "script" "handle_right_click"
										/// @DnDSaveInfo : "script" "f555c591-d492-4776-80e8-1a7bb43a097c"
										script_execute(handle_right_click);
						
										/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
										/// @DnDVersion : 1
										/// @DnDHash : 77BF5A65
										/// @DnDParent : 7181F360
										/// @DnDArgument : "key" "vk_shift"
										/// @DnDArgument : "not" "1"
										var l77BF5A65_0;
										l77BF5A65_0 = keyboard_check(vk_shift);
										if (!l77BF5A65_0)
										{
											
										
															/// @DnDAction : YoYo Games.Common.Variable
															/// @DnDVersion : 1
															/// @DnDHash : 5E393DD0
															/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
															/// @DnDParent : 77BF5A65
															/// @DnDArgument : "expr" "false"
															/// @DnDArgument : "var" "showGrid"
															with(oGrid) {
															showGrid = false;
															
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 06A629BC
						/// @DnDParent : 34AA51A9
						else
						{
							
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 692B6F69
										/// @DnDParent : 06A629BC
										/// @DnDArgument : "script" "handle_placement_cancel"
										/// @DnDSaveInfo : "script" "2a034edb-3581-4f0f-a9e6-f01329254d33"
										script_execute(handle_placement_cancel);
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 6719477F
										/// @DnDParent : 06A629BC
										/// @DnDArgument : "script" "handle_left_click_new"
										/// @DnDSaveInfo : "script" "f287a56d-c28f-4b96-ae6f-e6aecb8cf953"
										script_execute(handle_left_click_new);
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 2094C8C3
										/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
										/// @DnDParent : 06A629BC
										/// @DnDArgument : "expr" "false"
										/// @DnDArgument : "var" "showGrid"
										with(oGrid) {
										showGrid = false;
										
										}
						
						
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
		
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5F6290B3
			/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
			/// @DnDParent : 384F62BB
			/// @DnDArgument : "expr" "showGrid"
			/// @DnDArgument : "not" "1"
			with(oGrid) var l5F6290B3_0 = showGrid;
			if(!l5F6290B3_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4E5F7F99
						/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
						/// @DnDParent : 5F6290B3
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "showGrid"
						with(oGrid) {
						showGrid = true;
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 685083C3
			/// @DnDParent : 384F62BB
			else
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3CE6089D
						/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
						/// @DnDParent : 685083C3
						/// @DnDArgument : "expr" "false"
						/// @DnDArgument : "var" "showGrid"
						with(oGrid) {
						showGrid = false;
						
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0CEBFE9A
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "key" "ord("R")"
	var l0CEBFE9A_0;
	l0CEBFE9A_0 = keyboard_check_pressed(ord("R"));
	if (l0CEBFE9A_0)
	{
		
	
			/// @DnDAction : YoYo Games.Game.Restart_Game
			/// @DnDVersion : 1
			/// @DnDHash : 53F1B5B2
			/// @DnDParent : 0CEBFE9A
			game_restart();
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 797FE183
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "key" "ord("1")"
	var l797FE183_0;
	l797FE183_0 = keyboard_check_pressed(ord("1"));
	if (l797FE183_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39EB798F
			/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
			/// @DnDParent : 797FE183
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "showGrid"
			with(oGrid) {
			showGrid = true;
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 376FF631
			/// @DnDParent : 797FE183
			/// @DnDArgument : "var" "selectedTowerType"
			selectedTowerType = 0;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 61837879
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "key" "ord("2")"
	var l61837879_0;
	l61837879_0 = keyboard_check_pressed(ord("2"));
	if (l61837879_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5613C98E
			/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
			/// @DnDParent : 61837879
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "showGrid"
			with(oGrid) {
			showGrid = true;
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BE122EA
			/// @DnDParent : 61837879
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "selectedTowerType"
			selectedTowerType = 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0A933357
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "key" "ord("3")"
	var l0A933357_0;
	l0A933357_0 = keyboard_check_pressed(ord("3"));
	if (l0A933357_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3219C64A
			/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
			/// @DnDParent : 0A933357
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "showGrid"
			with(oGrid) {
			showGrid = true;
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FA43C7A
			/// @DnDParent : 0A933357
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "selectedTowerType"
			selectedTowerType = 2;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7350B549
	/// @DnDParent : 6CC7063D
	/// @DnDArgument : "key" "vk_escape"
	var l7350B549_0;
	l7350B549_0 = keyboard_check_pressed(vk_escape);
	if (l7350B549_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0BA9D8EF
			/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
			/// @DnDParent : 7350B549
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "showGrid"
			with(oGrid) {
			showGrid = false;
			
			}
	
	
	}


}

