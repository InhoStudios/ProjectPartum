/// @description p_move(); Movement state for the player.
var movex, movey, dir;

movex = input.key_right - input.key_left;
movey = input.key_down - input.key_up;

dir = point_direction(0,0,movex,movey);

if(movex != 0 || movey != 0){
	hsp = lengthdir_x(movespeed,dir);
	vsp = lengthdir_y(movespeed,dir);
} else {
	hsp = 0;
	vsp = 0;
}

if(place_meeting(x + hsp, y, o_wall)){
	while(!place_meeting(x + sign(hsp), y, o_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

if(place_meeting(x, y + vsp, o_wall)){
	while(!place_meeting(x, y + sign(vsp), o_wall)){
		y += sign(vsp)
	}
	vsp = 0;
}
y += vsp;