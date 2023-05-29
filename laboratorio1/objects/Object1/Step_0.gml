/// @description Insert description here
// You can write your code in this editor


var horizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
var vertical = keyboard_check(vk_down) - keyboard_check(vk_up);

var step = 5;

x += horizontal * step;
y += vertical * step;


//1 -> derecha
//2 -> izquierda
//3 -> arriba
//4 -> abajo

if( horizontal > 0 )
{
	direccion = 1;
	sprite_index = sPlayerWalkingRight;
}
else if( horizontal < 0 )
{
	direccion = 2;
	sprite_index = sPlayerWalkingLeft;
}

if( vertical > 0 )
{
	direccion = 4;
	sprite_index = sPlayerWalkingDown;
}
else if( vertical < 0 )
{
	direccion = 3;	
	sprite_index = sPlayerWalkingUp;
}

if( horizontal == 0 and vertical == 0 )
{
	if( direccion == 1 )
	{
		sprite_index = sPlayerIdleRight;
	}
	else if( direccion == 2 )
	{
		sprite_index = sPlayerIdleLeft;
	}
	else if( direccion == 3 )
	{
		sprite_index = sPlayerIdleUp;
	}
	else
	{
		sprite_index = sPlayerIdleDown;	
	}
}





