/// @description Insert description here
// You can write your code in this editor
hp = random_range(10, 15);
init_shootcounter = random_range(25,30);
shootcounter = init_shootcounter;
drop = irandom(5);

sprite_index = choose(spr_enemy1,spr_enemy2);
direction = irandom_range(0,359);
image_angle = direction;

speed = 1;