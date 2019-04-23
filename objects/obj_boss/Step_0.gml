/// @description Insert description here
// You can write your code in this editor
if(x < obj_ship.x)
{
	x = x + 3;
}

if(y < 600)
{
	y = y + 1;
}

if(x > obj_ship.x)
{
	x = x - 3;
}
shootcounter = shootcounter - 1;
if(shootcounter <= 0)
{
	var inst = instance_create_layer(x,y,"Instances", obj_enemy_bullet);
		inst.direction = image_angle - 90;
		inst.image_angle = image_angle - 90;
		inst.speed = 15
var inst2 = instance_create_layer(x + sprite_width/ 2 - 50,y,"Instances", obj_enemy_bullet);
		inst2.direction = image_angle - 90;
		inst2.image_angle = image_angle - 90;
		inst2.speed = 10
		var inst3 = instance_create_layer(x - sprite_width/ 2 + 50,y,"Instances", obj_enemy_bullet);
		inst3.direction = image_angle - 90;
		inst3.image_angle = image_angle - 90;
		inst3.speed = 30
		shootcounter = 15;
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