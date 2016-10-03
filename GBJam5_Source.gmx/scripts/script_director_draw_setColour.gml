//
if(window_get_height() != global.gameHeight*global.zoom)
    and (window_get_width() != global.gameWidth*global.zoom)
    and !window_get_fullscreen()
{
    window_set_size(global.gameWidth*global.zoom,global.gameHeight*global.zoom);
    surface_resize(application_surface,global.gameWidth,global.gameHeight);
    display_set_gui_size(-1,-1);
    display_reset(0,false);
}


//Set Global Pallete Colour
draw_set_colour(global.palette);

if(keyboard_check_pressed(ord("P")))
{
    var h,s,v;
    h = irandom(255);
    s = 255;
    v = 60;
    global.palette = make_colour_hsv(h,s,v);
}

draw_set_blend_mode_ext(bm_dest_color,bm_one);
draw_rectangle_colour(0,0,window_get_width(),window_get_height(),global.palette,global.palette,global.palette,global.palette,false);
draw_set_blend_mode(bm_normal);

draw_set_colour(global.palette);
