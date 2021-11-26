extends Area


# Called when the node enters the scene tree for the first time.
func _ready():
	if connect("body_entered", self, "_on_Area_body_entered") != OK:
		print("error connecting SetPickable enter handler")
	if connect("body_exited", self, "_on_Area_body_exited") != OK:
		print("error connecting SetPickable exit handler")


func _on_Area_body_entered(body):

	if body.is_in_group("pickable_candidate"):
		if !body.get("pickable_weight"):
			print("no pickable_weight, but is candidate: ", body)
		# Check if we allow that this object can be picked up (GameData.data.max_stickee_volume)
		elif GameData.data.max_stickee_volume > body.pickable_weight:
			print("add to pickables", body)
			body.add_to_group("pickable")
		else:
			print("too heavey: ", body)

func _on_Area_body_exited(body):
	if body.is_in_group("pickable_candidate") and body.is_in_group("pickable"):
		body.remove_from_group("pickable")
