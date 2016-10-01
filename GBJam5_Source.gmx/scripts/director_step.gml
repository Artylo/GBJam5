//Lighting Surface
if (surface_exists(surf))
{
    surface_set_target(surf);

    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(0, 0, room_width, room_height, 0);

    draw_set_blend_mode(bm_subtract);
    draw_set_color(c_white);
    
    with (character)
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
    
       /*        
    with (oParticleLantern)
        if (image_xscale > 0.25)
            draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 2 + random_range(-1, 1), false);
    */
    
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
} 
else
{
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

background_x[1] -= 0.5;
