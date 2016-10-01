///Director Create
current_fps = 60;
target_fps = 60;

//Lighting Surface
surf = surface_create(room_width,room_height);
surface_set_target(surf);
draw_clear_alpha(c_black,0);
surface_reset_target();
