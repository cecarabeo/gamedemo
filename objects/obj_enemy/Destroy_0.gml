/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "Instances",obj_explosion);
audio_play_sound(snd_enemykill,5,false);

if(drop == 3){
	type_drop = choose(obj_upgrade_pickup,obj_pickup);
	instance_create_layer(x, y, "Instances",type_drop);
	drop = 0;
}

if(instance_exists(obj_ship)){
	obj_ship.player_score = obj_ship.player_score + 10;
	obj_ship.kill_count = obj_ship.kill_count + 1;
	if(instance_number(obj_enemy) <= 5)
	{
		var spawn_x;
		var spawn_y;
		do{
			spawn_x = irandom_range(0,1024);
			spawn_y = irandom_range(0,1700);
		}until(!collision_circle(spawn_x, spawn_y, 500, obj_ship, false, true));
		
		instance_create_layer(spawn_x, spawn_y, "Instances",obj_enemy);
	}
}