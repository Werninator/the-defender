/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4CC2F570
/// @DnDArgument : "expr" "room != rIntro"
if(room != rIntro)
{
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24701E05
	/// @DnDInput : 2
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "var" "maximum"
	/// @DnDArgument : "value" "waveInterval * room_speed"
	/// @DnDArgument : "var_1" "progress"
	/// @DnDArgument : "value_1" "alarm[0] / maximum"
	var maximum = waveInterval * room_speed;
	var progress = alarm[0] / maximum;
	

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 13EDC61D
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "color" "$FF00FF00"
	/// @DnDArgument : "alpha" "0"
	draw_set_colour($FF00FF00 & $ffffff);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 362B50DC
	/// @DnDInput : 5
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "function" "draw_line_width"
	/// @DnDArgument : "arg" "0"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "global.camW * 2 * progress"
	/// @DnDArgument : "arg_3" "0"
	/// @DnDArgument : "arg_4" "5"
	draw_line_width(0, 0, global.camW * 2 * progress, 0, 5);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 17A6A41D
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "font" "font_regular"
	/// @DnDSaveInfo : "font" "f135c10c-7094-4e16-b501-0b7a73bc25ba"
	
	{
		draw_set_font(font_regular);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 54BD906C
	/// @DnDParent : 4CC2F570
	/// @DnDArgument : "expr" "hp <= 0"
	if(hp <= 0)
	{
		
	
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 122F82E0
			/// @DnDParent : 54BD906C
			/// @DnDArgument : "y" "5"
			/// @DnDArgument : "caption" ""YOU LOST. PRESS R TO RESTART""
			
			{
				var l122F82E0_0 = 0;
				var l122F82E0_1 = 5;
				draw_text(l122F82E0_0, l122F82E0_1, string("YOU LOST. PRESS R TO RESTART") + "");
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0220611C
	/// @DnDParent : 4CC2F570
	else
	{
		
	
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 0926A7B4
			/// @DnDParent : 0220611C
			/// @DnDArgument : "y" "5"
			/// @DnDArgument : "caption" ""HEALTH: ""
			/// @DnDArgument : "var" "hp"
			
			{
				var l0926A7B4_0 = 0;
				var l0926A7B4_1 = 5;
				draw_text(l0926A7B4_0, l0926A7B4_1, string("HEALTH: ") + string(hp));
			}
	
	
	}


}

