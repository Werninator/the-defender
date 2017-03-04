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
	
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 67C5AA5F
			/// @DnDParent : 246EFD38
			/// @DnDArgument : "code" "mp_grid_draw(playerGrid);$(13_10)draw_path(playerPath, 0, 0, true);"
			
			{
				mp_grid_draw(playerGrid);
			draw_path(playerPath, 0, 0, true);
			}
	
			/// @DnDAction : YoYo Games.Drawing.Set_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 506DCABC
			/// @DnDParent : 246EFD38
			
			{
				draw_set_alpha(1);
			}
	
	
	}


}

