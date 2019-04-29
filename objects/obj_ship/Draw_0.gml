/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(ScoreFont);
draw_text(60,1686, "SCORE: " + string_format(player_score, 10, 0));
draw_text(60,1706, "SPECIAL: " + string_format(special_ammo, 1, 0));

draw_self();