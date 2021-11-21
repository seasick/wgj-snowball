extends Area


# Called when the node enters the scene tree for the first time.
func _ready():
	if connect("body_entered", self, "_on_Area_body_entered") != OK:
		print("error connecting SetPickable enter handler")
	if connect("body_exited", self, "_on_Area_body_exited") != OK:
		print("error connecting SetPickable exit handler")


func _on_Area_body_entered(body):
	if body.is_in_group("pickable_candidate"):
		# TODO Check if it is big enough
		
		if body.has_node("MeshInstance"):
			var aabb = body.get_node("MeshInstance").get_transformed_aabb()
			var longest_axis = aabb.get_longest_axis_size()
			
			if longest_axis <= GameData.data.max_stickee_volume:
				body.add_to_group("pickable")
	
func _on_Area_body_exited(body):
	if body.is_in_group("pickable_candidate"):
		body.remove_from_group("pickable")
