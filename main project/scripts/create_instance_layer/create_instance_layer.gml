///@description create_instance_layer
///@arg x
///@arg y
///@arg layer
///@arg obj
function create_instance_layer(ax, ay, al, o, struct=undefined) {
	if struct != undefined {
		instance_create_layer(ax,ay,al,o, struct);
	} else {
		instance_create_layer(ax,ay,al,o);
	}
}
