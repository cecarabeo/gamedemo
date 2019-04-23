/// @description Insert description here
// You can write your code in this editor
if(obj_ship.health_point == 0)
{
	instance_destroy();
}
else{
	image_index = obj_ship.health_point - 1;
}