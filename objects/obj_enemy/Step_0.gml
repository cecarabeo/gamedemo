/// @description Insert description here
// You can write your code in this editor
move_wrap(true,true,sprite_width / 2);

if(sprite_index == spr_enemy2)
{
	shootcounter = shootcounter - 1;
	if(instance_exists(obj_ship))
	{
		move_towards_point(obj_ship.x, obj_ship.y, 1);
		image_angle = direction;
	}
	if(shootcounter <= 0)
	{
		var inst = instance_create_layer(x,y,"Instances", obj_enemy_bullet);
		inst.direction = image_angle;
		inst.image_angle = image_angle;
		audio_play_sound(snd_enemyshoot,5,false);
		shootcounter = init_shootcounter;
	}
}
if(sprite_index == spr_enemy1)
{
	shootcounter = shootcounter - 1;
	if(instance_exists(obj_ship))
	{
		direction = point_direction(x,y,initial_x,initial_y);
		image_angle = direction;
	}
	if(shootcounter <= 0)
	{
		var inst = instance_create_layer(x,y,"Instances", obj_enemy_bullet);
		inst.direction = image_angle;
		inst.image_angle = image_angle;
		audio_play_sound(snd_enemyshoot,5,false);
		shootcounter = init_shootcounter;
	}
}
if(hp <= 0)
{
	instance_destroy();
}

if(instance_exists(obj_ship)){
	if(obj_ship.kill_count >= 10 && obj_ship.boss_stage == false)
	{
		instance_create_layer(room_width / 2, -200, "Instances",obj_boss);
		obj_ship.boss_stage = true;
		obj_ship.kill_count = 0;
	}
}