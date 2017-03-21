/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5548081C

{
	draw_self();
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7297D242
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "0"
draw_set_colour($FF000000 & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 12DAA6B2
/// @DnDArgument : "font" "font_mini"
/// @DnDSaveInfo : "font" "99156c84-a5e5-45a3-b419-80cb94925ad3"

{
	draw_set_font(font_mini);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 33B0F0F4
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "8 - string_height(string(cost)) / 2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "cost"

{
	var l33B0F0F4_0 = x + 16;
	var l33B0F0F4_1 = y + 8 - string_height(string(cost)) / 2;
	draw_text(l33B0F0F4_0, l33B0F0F4_1,  + string(cost));
}

