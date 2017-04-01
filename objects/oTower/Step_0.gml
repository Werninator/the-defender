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
	/// @DnDArgument : "xpos" "x div 16 * 16 - 6"
	/// @DnDArgument : "ypos" "y div 16 * 16"
	/// @DnDArgument : "var" "projectile"
	/// @DnDArgument : "objectid" "oProjectile"
	/// @DnDArgument : "layer" ""Instances_Projectiles""
	/// @DnDSaveInfo : "objectid" "dca9b152-b060-4f3c-b0fb-16faae6da448"
	projectile = instance_create_layer(x div 16 * 16 - 6, y div 16 * 16, "Instances_Projectiles", oProjectile); 

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 16C1D24B
	/// @DnDParent : 396A9813
	/// @DnDArgument : "soundid" "sndTowershoot"
	/// @DnDSaveInfo : "soundid" "decc2709-568e-4b76-a4b3-07e938df0bd0"
	
	{
		audio_play_sound(sndTowershoot, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C091D3D
	/// @DnDInput : 2
	/// @DnDParent : 396A9813
	/// @DnDArgument : "var" "_dmg"
	/// @DnDArgument : "value" "projectileDamage"
	/// @DnDArgument : "var_1" "_spd"
	/// @DnDArgument : "value_1" "projectileSpeed"
	var _dmg = projectileDamage;
	var _spd = projectileSpeed;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70C6C3E3
	/// @DnDInput : 3
	/// @DnDApplyTo : projectile
	/// @DnDParent : 396A9813
	/// @DnDArgument : "expr" "nearestEnemy"
	/// @DnDArgument : "expr_1" "_dmg"
	/// @DnDArgument : "expr_2" "_spd"
	/// @DnDArgument : "var" "enemy"
	/// @DnDArgument : "var_1" "damage"
	/// @DnDArgument : "var_2" "speed"
	with(projectile) {
	enemy = nearestEnemy;
	damage = _dmg;
	speed = _spd;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0C85811B
	/// @DnDParent : 396A9813
	/// @DnDArgument : "steps" "cooldown"
	alarm_set(0, cooldown);
	


}

