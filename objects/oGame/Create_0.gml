/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 5D617A2E
/// @DnDArgument : "timeline" "tlIntro"
/// @DnDSaveInfo : "timeline" "4e924a5d-daee-4705-ae7b-c34a4f4fc12e"

{
	timeline_index = tlIntro;
	timeline_loop = 0;
	timeline_running = 1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72168D86
/// @DnDInput : 11
/// @DnDArgument : "expr" "9"
/// @DnDArgument : "expr_5" "60"
/// @DnDArgument : "expr_6" ".5 * room_speed"
/// @DnDArgument : "var" "wood"
/// @DnDArgument : "var_1" "stone"
/// @DnDArgument : "var_2" "gold"
/// @DnDArgument : "var_3" "fabric"
/// @DnDArgument : "var_4" "nextWave"
/// @DnDArgument : "var_5" "waveInterval"
/// @DnDArgument : "var_6" "global.constructionTime"
/// @DnDArgument : "var_7" "towerWood"
/// @DnDArgument : "var_8" "towerStone"
/// @DnDArgument : "var_9" "towerFabric"
/// @DnDArgument : "var_10" "selectedTowerType"
wood = 9;
stone = 0;
gold = 0;
fabric = 0;
nextWave = 0;
waveInterval = 60;
global.constructionTime = .5 * room_speed;
towerWood = 0;
towerStone = 0;
towerFabric = 0;
selectedTowerType = 0;


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0CA9A109
/// @DnDArgument : "steps" "waveInterval * room_speed"
alarm_set(0, waveInterval * room_speed);


/// @DnDAction : YoYo Games.Cameras.Get_View_Var
/// @DnDVersion : 1
/// @DnDHash : 0A060B81
/// @DnDArgument : "target" "cam"
/// @DnDArgument : "target_temp" "1"
var cam = view_get_camera(0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5DBE81A7
/// @DnDArgument : "var" "_camH"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "camera_get_view_height"
/// @DnDArgument : "arg" "cam"
var _camH = camera_get_view_height(cam);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 38AD6567
/// @DnDArgument : "var" "_camW"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "camera_get_view_width"
/// @DnDArgument : "arg" "cam"
var _camW = camera_get_view_width(cam);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6EE26863
/// @DnDInput : 2
/// @DnDArgument : "value" "_camH"
/// @DnDArgument : "value_1" "_camW"
/// @DnDArgument : "var" "camH"
/// @DnDArgument : "var_1" "camW"
global.camH = _camH;
global.camW = _camW;


