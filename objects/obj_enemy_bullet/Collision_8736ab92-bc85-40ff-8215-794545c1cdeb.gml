/// @description Insert description here
// You can write your code in this editor
instance_destroy();
with(other)
{
	if(!invulnerable){
		health_point = health_point - 1;
		invulnerable = true;
	}
}
