/// @description Insert description here
// You can write your code in this editor

//explosionCounter = explosioncounter - 1;
explosionCounter = explosionCounter - 1;
if(explosionCounter == 0)
{
	instance_destroy();
	explosionCounter = 25;
}