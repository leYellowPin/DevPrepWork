/// @description main


var cam_ = view_camera[0];


global.view_zoomX = lerp(global.view_zoomX, viewZoomW, Zsmooth);
global.view_zoomY = lerp(global.view_zoomY, viewZoomH, Zsmooth);

view_width = global.view_zoomX*global.resolutionX;
view_height = global.view_zoomY*global.resolutionY;

view_angle = lerp(view_angle, viewRot, Rsmooth);

x += (view_target.x - x)/smooth;
y += (view_target.y - y)/smooth;
		
view_x = x - (view_width/2)+global.view_offsetX;
view_y = y - (view_height/2)+global.view_offsetY;

camera_set_view_pos(cam_, view_x, view_y);
camera_set_view_size(cam_, view_width, view_height);
camera_set_view_angle(cam_, view_angle);
if view_border{
	camera_set_view_target(cam_, o_camera);  //turn this on if you want to have view borders enabled
}

/*
if mouse_wheel_up() {
	viewZoomW--;
	viewZoomH--;
}
if mouse_wheel_down() {
	viewZoomW++;
	viewZoomH++;
}
*/