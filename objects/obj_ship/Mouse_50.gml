/// @description Insert description here
// You can write your code in this editor
aspd = aspd - 1;
if(aspd == 0)
{
	switch(bullet_level){
		case 1: 
			var middle = instance_create_layer(x+lengthdir_x(sprite_height / 2,image_angle),y+lengthdir_y(sprite_height / 2,image_angle),"Instances", obj_bullet);
			middle.direction = image_angle;
			middle.image_angle = image_angle;
			break;
		case 2: 
			var left = instance_create_layer(x + lengthdir_x(sprite_height / 2,image_angle + sprite_width / 2),y + lengthdir_y(sprite_height / 2,image_angle + sprite_width / 2),"Instances", obj_bullet);
			left.direction = image_angle;
			left.image_angle = image_angle;
		
			var right = instance_create_layer(x + lengthdir_x(sprite_height / 2,image_angle - sprite_width / 2),y + lengthdir_y(sprite_height / 2,image_angle - sprite_width / 2),"Instances", obj_bullet);
			right.direction = image_angle;
			right.image_angle = image_angle;
			break;
		case 3: 
			var middle = instance_create_layer(x+lengthdir_x(sprite_height / 2,image_angle),y+lengthdir_y(sprite_height / 2,image_angle),"Instances", obj_bullet);
			middle.direction = image_angle;
			middle.image_angle = image_angle;
		
			var left = instance_create_layer(x + lengthdir_x(sprite_height / 2,image_angle + sprite_width / 2),y + lengthdir_y(sprite_height / 2,image_angle + sprite_width / 2),"Instances", obj_bullet);
			left.direction = image_angle;
			left.image_angle = image_angle;
		
			var right = instance_create_layer(x + lengthdir_x(sprite_height / 2,image_angle - sprite_width / 2),y + lengthdir_y(sprite_height / 2,image_angle - sprite_width / 2),"Instances", obj_bullet);
			right.direction = image_angle;
			right.image_angle = image_angle;
			break;
		default: break;
	}		
	audio_play_sound(snd_shoot,5, false);
	aspd = base_aspd;
}