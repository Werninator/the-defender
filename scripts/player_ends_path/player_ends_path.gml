/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 74DCA906
/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
with(oGrid)
{
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6E904822
	/// @DnDParent : 74DCA906
	/// @DnDArgument : "function" "path_delete"
	/// @DnDArgument : "arg" "playerPath"
	path_delete(playerPath);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 638919A4
	/// @DnDParent : 74DCA906
	/// @DnDArgument : "expr" "path_add()"
	/// @DnDArgument : "var" "playerPath"
	playerPath = path_add();
	


}

