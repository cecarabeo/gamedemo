/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y);

score = player_score;
draw_text(20,20,score);

if(health_point <= 0)
{
	instance_destroy();
}


move_wrap(true,true,sprite_width / 2);