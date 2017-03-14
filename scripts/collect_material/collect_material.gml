/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BAF90B8
/// @DnDArgument : "var" "tileIndex"
/// @DnDArgument : "value" "argument0"
var tileIndex = argument0;


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7B5C6784
/// @DnDArgument : "expr" "tileIndex"
var l7B5C6784_0;
l7B5C6784_0 = tileIndex;
switch(l7B5C6784_0)
{
	

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 442F1426
	/// @DnDParent : 7B5C6784
	/// @DnDArgument : "const" "6"
	case 6:
		{
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 163EF405
			/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
			/// @DnDParent : 442F1426
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "stone"
			with(oGame) {
			stone += 1;
			
			}
	
	
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2E550748
	/// @DnDParent : 7B5C6784
	/// @DnDArgument : "const" "7"
	case 7:
		{
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1BDBAA0A
			/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
			/// @DnDParent : 2E550748
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "wood"
			with(oGame) {
			wood += 1;
			
			}
	
	
		}
		break;


}

