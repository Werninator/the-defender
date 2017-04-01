/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 69C28C35
/// @DnDArgument : "expr" "other.x"
if(other.x)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 694D7BD4
	/// @DnDParent : 69C28C35
	/// @DnDArgument : "expr" "-other.damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "currentHealth"
	currentHealth += -other.damage;
	

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 55FC151D
	/// @DnDParent : 69C28C35
	/// @DnDArgument : "soundid" "sndHurt"
	/// @DnDSaveInfo : "soundid" "d903cf91-dd7c-4466-893e-1ab9cae67f34"
	
	{
		audio_play_sound(sndHurt, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3288E822
	/// @DnDApplyTo : other
	/// @DnDParent : 69C28C35
	with(other) instance_destroy();


}

