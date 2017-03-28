/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F8118B0
/// @DnDInput : 2
/// @DnDArgument : "var" "placementX"
/// @DnDArgument : "value" "argument0"
/// @DnDArgument : "var_1" "placementY"
/// @DnDArgument : "value_1" "argument1"
var placementX = argument0;
var placementY = argument1;


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0D2760C6
/// @DnDArgument : "xpos" "placementX"
/// @DnDArgument : "ypos" "placementY"
/// @DnDArgument : "var" "tower"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "oTower"
/// @DnDSaveInfo : "objectid" "a6a4ff80-c096-4ee4-a4f9-b0447646c467"
var tower = instance_create_layer(placementX, placementY, "Instances", oTower); 

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7898A8F8
/// @DnDInput : 3
/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
/// @DnDArgument : "function" "mp_grid_add_instances"
/// @DnDArgument : "arg" "playerGrid"
/// @DnDArgument : "arg_1" "oTower"
/// @DnDArgument : "arg_2" "false"
with(oGrid) {
	mp_grid_add_instances(playerGrid, oTower, false);
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 02F4E07B
/// @DnDArgument : "script" "generate_new_enemy_paths"
/// @DnDSaveInfo : "script" "29caa0b4-37ad-4ff1-9fb2-6042f78a0671"
script_execute(generate_new_enemy_paths);

