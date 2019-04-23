/// @description Insert description here
// You can write your code in this editor
move_wrap(true,true,sprite_width / 2);
//image_angle += 1;
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
		shootcounter = 30;
	}
}
if(hp <= 0)
{
	instance_create_layer(x, y, "Instances",obj_explosion);
	instance_destroy();
	audio_play_sound(snd_enemykill,5,false);
	drop = choose(0,1,2,3,4,5);
	if(drop == 3)
	{
		instance_create_layer(x, y, "Instances",obj_pickup);
		drop = 0;
	}
	//instance_destroy(obj_explosion);
	obj_ship.player_score = obj_ship.player_score + 10;
	obj_ship.kill_count = obj_ship.kill_count + 1;
	if(obj_ship.kill_count < 10)
	{
		instance_create_layer(irandom_range(0,1024), irandom_range(0,1700), "Instances",obj_enemy);
	}
}

if(obj_ship.kill_count >= 10 && obj_ship.boss_stage = false)
{
	instance_create_layer(room_width / 2, -200, "Instances",obj_boss);
	obj_ship.boss_stage = true;
	obj_ship.kill_count = 0;
}