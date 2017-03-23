/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A83ECFE
/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
with(oGame) {
hp += -1;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 44A9D8D1
/// @DnDApplyTo : other
with(other) instance_destroy();

