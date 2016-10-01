///Movement

//Inputs
keyUP = keyboard_check(vk_up) or keyboard_check(ord('W'));
keyDOWN = keyboard_check(vk_down) or keyboard_check(ord('S'));
keyLEFT = keyboard_check(vk_left) or keyboard_check(ord('A'));
keyRIGHT = keyboard_check(vk_right) or keyboard_check(ord('D'));
keyLEFT = abs(keyLEFT)*-1;

keyJUMP = keyboard_check_pressed(vk_space);

//Calculations
move = keyLEFT + keyRIGHT;
hsp = move * movespeed;
if(vsp < 10)
{
    vsp += grav;
}

//Jumping
if(place_meeting(x,y+1,block))
{
    if(jumps > 0)
    {
        vsp = keyJUMP * -jumpspeed;
        jumps--;
    }
    jumps = 2;
}


if(place_meeting(x+hsp, y+vsp, block))
{
    
    while(!place_meeting(x+sign(hsp), y+sign(vsp), block))
    {
        x+= sign(hsp);
        y+= sign(vsp);
    }
    hsp = 0;
    vsp = 0;
}

x += hsp;
y += vsp;

if(keyJUMP) repeat(irandom(100))instance_create(x,y,dust);

//Animation
if(move != 0)
{   
    sprite_index = s_character_walking;
    image_speed = ((hsp+vsp)/2);
    if(keyLEFT) image_xscale = -1;
    if(keyRIGHT) image_xscale = 1;
}
else
{
    sprite_index = s_character_idle;
    image_speed = 0.1;
}
