// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_circle_width(_x, _y, inner_radius, thickness, segments){
	var jadd = 360/segments;
	draw_primitive_begin(pr_trianglestrip);
	for (var j = 0; j <= 360; j+=jadd)
	{
	    draw_vertex(_x+lengthdir_x(inner_radius,j),_y+lengthdir_y(inner_radius,j));
    

	  draw_vertex(_x+lengthdir_x(inner_radius+thickness,j),_y+lengthdir_y(inner_radius+thickness,j));
	    }
	draw_primitive_end();
}