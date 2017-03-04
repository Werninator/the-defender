/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2DDB8103
/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
with(oGrid)
{
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7DC50697
	/// @DnDParent : 2DDB8103
	/// @DnDArgument : "function" "path_delete"
	/// @DnDArgument : "arg" "playerPath"
	path_delete(playerPath);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09FB86F1
	/// @DnDParent : 2DDB8103
	/// @DnDArgument : "expr" "path_add()"
	/// @DnDArgument : "var" "playerPath"
	playerPath = path_add();
	


}

