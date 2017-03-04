draw_set_font(font_biggest);

var str = "S P K\nF S T\nP M P";
var _x  = (window_get_width() - string_width(str)) / 2;
var _y  = (window_get_height() - string_height(str)) / 2;

draw_text(_x, _y, str);