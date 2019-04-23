/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D")))
{
	x = x + 4;
}
if(keyboard_check(ord("A")))
{
	x = x - 4;
}
if(keyboard_check(ord("W")))
{
	//motion_add(image_angle, 0.05);
	y = y - 4;
}
if(keyboard_check(ord("S")))
{
	//motion_add(image_angle, 0.05);
	y = y + 4;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

if(mouse_check_button(mb_left))
{
	counter = counter - 1;
	if(counter == 0)
	{
		var inst = instance_create_layer(x+lengthdir_x(30,image_angle),y+lengthdir_y(30,image_angle),"Instances", obj_bullet);
		inst.direction = image_angle;
		inst.image_angle = image_angle;
		
		var inst2 = instance_create_layer(x + lengthdir_x(30,image_angle + 90),y + lengthdir_y(30,image_angle + 90),"Instances", obj_bullet);
		inst2.direction = image_angle;
		inst2.image_angle = image_angle;
		
		var inst3 = instance_create_layer(x + lengthdir_x(30,image_angle + -90),y + lengthdir_y(30,image_angle + -90),"Instances", obj_bullet);
		inst3.direction = image_angle;
		inst3.image_angle = image_angle;
		
		audio_play_sound(snd_shoot,5, false);
		/*var inst3 = instance_create_layer(x - sprite_width / 2,y,"Instances", obj_bullet);
		inst3.direction = image_angle;
		inst3.image_angle = image_angle;*/
		counter = 5;
	}
}

score = player_score;
draw_text(20,20,"asdsds");
if(health_point <= 0)
{
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_player_explosion);
}


move_wrap(true,true,sprite_width / 2);