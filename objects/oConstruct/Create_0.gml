/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27F295F9
/// @DnDInput : 3
/// @DnDArgument : "expr" "undefined"
/// @DnDArgument : "expr_1" "undefined"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "scriptToCall"
/// @DnDArgument : "var_1" "arg"
/// @DnDArgument : "var_2" "argPos"
scriptToCall = undefined;
arg = undefined;
argPos = false;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CA7C065
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "moveEnabled"
with(oPlayer) {
moveEnabled = false;

}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 54361829
/// @DnDArgument : "steps" "global.constructionTime"
alarm_set(0, global.constructionTime);


