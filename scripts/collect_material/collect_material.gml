/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BAF90B8
/// @DnDArgument : "var" "tileIndex"
/// @DnDArgument : "value" "argument0"
var tileIndex = argument0;


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3399230B
/// @DnDArgument : "xpos" "oPlayer.x div 16 * 16 + 8"
/// @DnDArgument : "ypos" "oPlayer.y div 16 * 16 + 8"
/// @DnDArgument : "var" "box"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "oFloatBox"
/// @DnDSaveInfo : "objectid" "58f05b9e-da5c-48c7-89e7-6cfe045fd851"
var box = instance_create_layer(oPlayer.x div 16 * 16 + 8, oPlayer.y div 16 * 16 + 8, "Instances", oFloatBox); 

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2C3F29A4
/// @DnDArgument : "soundid" "sndGather"
/// @DnDSaveInfo : "soundid" "88a15194-25bb-445c-bf5f-a2dd35f15fdc"

{
	audio_play_sound(sndGather, 0, 0);
}

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
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 566E211A
			/// @DnDApplyTo : box
			/// @DnDParent : 442F1426
			/// @DnDArgument : "expr" ""+1 STONE (" + string(oGame.stone) + ")""
			/// @DnDArgument : "var" "text"
			with(box) {
			text = "+1 STONE (" + string(oGame.stone) + ")";
			
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
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4476E9AC
			/// @DnDApplyTo : box
			/// @DnDParent : 2E550748
			/// @DnDArgument : "expr" ""+1 WOOD (" + string(oGame.wood) + ")""
			/// @DnDArgument : "var" "text"
			with(box) {
			text = "+1 WOOD (" + string(oGame.wood) + ")";
			
			}
	
	
		}
		break;


}

