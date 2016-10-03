///Draw Debug

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

debug[0] = "[DEBUG]";
debug[1] = "global.palette: " + string(global.palette);
debug[3] = "FPS: " + string(fps_real);

if(keyboard_check(vk_control))
{
    for(var i = 0; i < array_length_1d(debug); ++i)
    {
        draw_text(16,16*i,debug[i]);
    }
}

draw_set_colour(global.palette);


