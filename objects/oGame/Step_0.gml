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
			/// @DnDHash : 52F63B8F
			/// @DnDInput : 2
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "var" "posX"
			/// @DnDArgument : "value" "mouse_x div 16 * 16 + 8"
			/// @DnDArgument : "var_1" "posY"
			/// @DnDArgument : "value_1" "mouse_y div 16 * 16 + 8"
			var posX = mouse_x div 16 * 16 + 8;
			var posY = mouse_y div 16 * 16 + 8;
			
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5623DB76
			/// @DnDInput : 2
			/// @DnDParent : 3CFF6CA6
			/// @DnDArgument : "script" "player_move_to"
			/// @DnDArgument : "arg" "posX"
			/// @DnDArgument : "arg_1" "posY"
			/// @DnDSaveInfo : "script" "2d1d8f18-bc61-4d16-be3a-94f7cbb3d5d4"
			script_execute(player_move_to, posX, posY);
	
	
	}


}

