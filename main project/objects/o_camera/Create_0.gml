/// @description init
smooth = 12;

view_target = o_camera;
view_border = 0;

viewZoomW = 1;
viewZoomH = 1;
viewRot = 0;


global.startx = view_target.x;
global.starty = view_target.y;

view_x = global.startx;
view_y = global.starty;

Zsmooth = .125; // more = smoother
Rsmooth = .01; // more = smoother

view_set_wport(view_camera[0], 1920);
view_set_hport(view_camera[0], 1080);


//every global variables related to viewport

global.view_zoomX = 1;
global.view_zoomY = 1;

global.view_offsetX = 0;
global.view_offsetY = 0;

//variables that's related to global variables related to viewport (very well-written comment)

view_width = global.view_zoomX*global.resolutionX;
view_height = global.view_zoomY*global.resolutionY;
view_angle = 0;