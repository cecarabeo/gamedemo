/// @description Insert description here
// You can write your code in this editor
hp = random_range(5, 10);
init_shootcounter = random_range(35,40);
shootcounter = init_shootcounter;
drop = irandom(5);
if(instance_exists(obj_ship))
{
	initial_x = obj_ship.x;
	initial_y = obj_ship.y;
}

sprite_index = choose(spr_enemy1,spr_enemy2);
direction = irandom_range(0,359);
image_angle = direction;

speed = 1;