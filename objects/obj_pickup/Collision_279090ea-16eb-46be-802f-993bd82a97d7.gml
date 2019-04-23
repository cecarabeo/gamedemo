/// @description Insert description here
// You can write your code in this editor
instance_destroy();
with(other)
{
	if(health_point < 4)
	{
		health_point = health_point + 1;
		audio_play_sound(snd_healthup,10,false);
	}
}