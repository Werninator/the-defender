/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59FCCB3C
/// @DnDArgument : "code" "/// @description Defining enums$(13_10)$(13_10)enum shopItemType {$(13_10)	none,$(13_10)	wood,$(13_10)	stone,$(13_10)	fabric$(13_10)}"

{
	/// @description Defining enums

enum shopItemType {
	none,
	wood,
	stone,
	fabric
}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34CD04DD
/// @DnDInput : 3
/// @DnDArgument : "expr" "shopItemType.none"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_2" "69"
/// @DnDArgument : "var" "currentType"
/// @DnDArgument : "var_1" "quantity"
/// @DnDArgument : "var_2" "cost"
currentType = shopItemType.none;
quantity = -1;
cost = 69;


