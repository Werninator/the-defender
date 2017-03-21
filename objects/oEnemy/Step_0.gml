/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 28A1C4D0
/// @DnDArgument : "expr" "currentHealth <= 0"
if(currentHealth <= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15873959
	/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
	/// @DnDParent : 28A1C4D0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fabric"
	with(oGame) {
	fabric += 1;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 222E06AE
	/// @DnDParent : 28A1C4D0
	instance_destroy();


}

