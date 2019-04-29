/// @description Insert description here
// You can write your code in this editor
if(special_ammo > 0){
	special_ammo--;	
	with(obj_enemy){
		instance_destroy();
	}
}