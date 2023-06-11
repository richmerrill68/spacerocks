/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

// Check if rock is big then make ti small
if (sprite_index == spr_rock_big) {
	sprite_index = spr_rock_small
	instance_copy(true);
} else if (instance_number(obj_rock) < 12) {
	// if rock is small then check if there are more than 12 rocks
	// if not then make new big rock off screen
	sprite_index = spr_rock_big;
	x = 100;
} else {
	// if small rock and more then 12 rocks then destroy sprite
	instance_destroy();
}

obj_game.points += 50;