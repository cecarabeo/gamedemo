/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_ship)){
	
	if(x == obj_ship.x)
	{
		if(y < obj_ship.y && y < room_height)
		{
			y = y + 5;
		}
	}
	if(x < obj_ship.x)
	{
		x = x + 3;
	}

	if(y < room_height / 2)
	{
		y = y + 1;
	}
	if(y > room_height / 2)
	{
		y = y - 1;
	}

	if(x > obj_ship.x)
	{
		x = x - 3;
	}	
}
shootcounter = shootcounter - 1;
if(shootcounter <= 0)
{
	shootcounter = 15;
	if(instance_exists(obj_ship))
	{
		target_x = obj_ship.x;
		target_y = obj_ship.y;
	}
		var inst = instance_create_layer(x+lengthdir_x(sprite_height / 2,image_angle - 90),y+lengthdir_y(sprite_height / 2,image_angle - 90),"Instances", obj_enemy_bullet);

		inst.direction = point_direction(x,y,target_x, target_y);
		inst.image_angle = point_direction(x,y,target_x, target_y);
		image_angle = point_direction(x,y,target_x, target_y) + 90;
		
		inst.speed = bulletspeed;
		if(hp <= 400)
		{
			if(bulletspeed < 20)
			{
				bulletspeed = bulletspeed * 2;
			}
			var inst2 = instance_create_layer(x+lengthdir_x(sprite_height / 2,image_angle - 135),y+lengthdir_y(sprite_height / 2,image_angle - 135),"Instances", obj_enemy_bullet);
			inst2.direction = point_direction(x,y,target_x, target_y);
			inst2.image_angle = point_direction(x,y,target_x, target_y);
			inst2.speed = bulletspeed;
			if(shootcounter > 10)
			{
				shootcounter = shootcounter - shootcounterlevel;
			}
		}
		if(hp <= 250)
		{
			if(bulletspeed < 40)
			{
				bulletspeed = bulletspeed * 2;
			}
			var inst3 = instance_create_layer(x+lengthdir_x(sprite_height / 2,image_angle - 45),y+lengthdir_y(sprite_height / 2,image_angle - 45),"Instances", obj_enemy_bullet);
			inst3.direction = point_direction(x,y,target_x, target_y);
			inst3.image_angle = point_direction(x,y,target_x, target_y);
			inst3.speed = bulletspeed;
			if(shootcounter > 5)
			{
				shootcounter = shootcounter - shootcounterlevel;
			}
		}
		
}

if(hp <= 0)
{
	instance_destroy();
	obj_ship.boss_stage = false;
}
//if(x + sprite_width / 2 >= window_get_width())
//{
//	x = x - 1;
//}