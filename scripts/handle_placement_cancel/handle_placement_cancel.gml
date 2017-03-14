/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F7A9553
/// @DnDInput : 2
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "var" "placeX"
/// @DnDArgument : "value" "placeTowerX"
/// @DnDArgument : "var_1" "placeY"
/// @DnDArgument : "value_1" "placeTowerY"
with(oPlayer) {
var placeX = placeTowerX;
var placeY = placeTowerY;

}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 21E934E4
/// @DnDArgument : "expr" "placeX != -1 && placeY != -1"
if(placeX != -1 && placeY != -1)
{
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 053919E0
	/// @DnDInput : 3
	/// @DnDParent : 21E934E4
	/// @DnDArgument : "function" "mp_grid_clear_cell"
	/// @DnDArgument : "arg" "oGrid.playerGrid"
	/// @DnDArgument : "arg_1" "placeX / 16"
	/// @DnDArgument : "arg_2" "placeY / 16"
	mp_grid_clear_cell(oGrid.playerGrid, placeX / 16, placeY / 16);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B5A5508
	/// @DnDInput : 2
	/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
	/// @DnDParent : 21E934E4
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "var" "placeTowerX"
	/// @DnDArgument : "var_1" "placeTowerY"
	with(oPlayer) {
	placeTowerX = -1;
	placeTowerY = -1;
	
	}


}

