/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y);

if(health_point <= 0)
{
	instance_destroy();
}

move_wrap(false,false,sprite_width / 2);

if(invulnerable){
	image_alpha = 0.5;
	
	invulnerability_time--;
	if(invulnerability_time == 0)
	{
		image_alpha = 1;
		invulnerability_time = base_invulnerability_time;
		invulnerable = false;
	}	
}