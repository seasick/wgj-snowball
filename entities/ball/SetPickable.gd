extends Area


# Called when the node enters the scene tree for the first time.
func _ready():
	if connect("body_entered", self, "_on_Area_body_entered") != OK:
		print("error connecting SetPickable enter handler")
	if connect("body_exited", self, "_on_Area_body_exited") != OK:
		print("error connecting SetPickable exit handler")


func _on_Area_body_entered(body):
	
	if body.is_in_group("pickable_candidate"):
		# TODO Check if we allow that this object can be picked up (GameData.data.max_stickee_volume)
		body.add_to_group("pickable")

func _on_Area_body_exited(body):
	if body.is_in_group("pickable_candidate") and body.is_in_group("pickable"):
		body.remove_from_group("pickable")
