///Init Room - "Game"

randomize();

//Game Resolution
global.gameWidth = 160;
global.gameHeight = 144;
global.zoom = 4;
surface_resize(application_surface,global.gameWidth,global.gameHeight);
display_reset(0,false);
view_wport = global.gameWidth;
view_hport = global.gameHeight;
view_wview = global.gameWidth;
view_hview = global.gameHeight;
display_set_gui_size(global.gameWidth,global.gameHeight);

global.palette = make_colour_rgb(139,172,15);
instance_create(0,0,director);

