/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 523F534F
/// @DnDInput : 3
/// @DnDArgument : "var" "nearestEnemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_nearest"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "oEnemy"
var nearestEnemy = instance_nearest(x, y, oEnemy);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4ED8BB9B
/// @DnDArgument : "var" "distance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "distance_to_object"
/// @DnDArgument : "arg" "nearestEnemy"
var distance = distance_to_object(nearestEnemy);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 396A9813
/// @DnDArgument : "expr" "distance <= range && alarm[0] == -1"
if(distance <= range && alarm[0] == -1)
{
	

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4962FD05
	/// @DnDParent : 396A9813
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "var" "projectile"
	/// @DnDArgument : "objectid" "oProjectile"
	/// @DnDArgument : "layer" ""Instances_Projectiles""
	/// @DnDSaveInfo : "objectid" "dca9b152-b060-4f3c-b0fb-16faae6da448"
	projectile = instance_create_layer(x, y, "Instances_Projectiles", oProjectile); 

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70C6C3E3
	/// @DnDApplyTo : projectile
	/// @DnDParent : 396A9813
	/// @DnDArgument : "expr" "nearestEnemy"
	/// @DnDArgument : "var" "enemy"
	with(projectile) {
	enemy = nearestEnemy;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0C85811B
	/// @DnDParent : 396A9813
	/// @DnDArgument : "steps" "cooldown"
	alarm_set(0, cooldown);
	


}

