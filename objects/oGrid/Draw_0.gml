/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4886D359
/// @DnDArgument : "var" "debug"
/// @DnDArgument : "value" "true"
var debug = true;


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 65902575
/// @DnDArgument : "expr" "debug"
if(debug)
{
	

	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 246EFD38
	/// @DnDParent : 65902575
	/// @DnDArgument : "var" "playerGrid"
	/// @DnDArgument : "not" "1"
	if(playerGrid != undefined)
	{
		
	
			/// @DnDAction : YoYo Games.Drawing.Set_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 3CE09F9A
			/// @DnDParent : 246EFD38
			/// @DnDArgument : "alpha" ".3"
			
			{
				draw_set_alpha(.3);
			}
	
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 29C644CC
			/// @DnDParent : 246EFD38
			/// @DnDArgument : "function" "mp_grid_draw"
			/// @DnDArgument : "arg" "playerGrid"
			mp_grid_draw(playerGrid);
	
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 0461D48A
			/// @DnDInput : 4
			/// @DnDParent : 246EFD38
			/// @DnDArgument : "function" "draw_path"
			/// @DnDArgument : "arg" "playerPath"
			/// @DnDArgument : "arg_1" "0"
			/// @DnDArgument : "arg_2" "0"
			/// @DnDArgument : "arg_3" "true"
			draw_path(playerPath, 0, 0, true);
	
			/// @DnDAction : YoYo Games.Drawing.Set_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 506DCABC
			/// @DnDParent : 246EFD38
			
			{
				draw_set_alpha(1);
			}
	
	
	}


}

