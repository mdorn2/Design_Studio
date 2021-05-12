depth = -271;
y = 0;
z = -960
obj_building.visible = true;
obj_lift_wall.visible = true;
obj_lift_wall_front.visible = true;
obj_lift_floor.visible = true;
obj_building_side.visible = true;
layer_background_index(layer_background_get_id("Background"),2);
instance_create_depth(obj_building.x,0,room_height/4-233,obj_solid);