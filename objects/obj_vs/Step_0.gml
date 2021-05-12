var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
if(global.a = 1){
	layer_background_index(back_id,1);
}
if(global.a = 2){
	layer_background_index(back_id,2);
}
if(global.a = 3){
	layer_background_index(back_id,3);
}
if(global.a > 3){
	layer_background_index(back_id,4);
}
