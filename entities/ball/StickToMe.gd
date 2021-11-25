extends RigidBody

# Called when the node enters the scene tree for the first time.
func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(40000)
	# TODO Without a large value for `set_max_contacts_reported` above , things will stop sticking
	# to the  ball. There has to be a better way.

	var error = connect("body_entered", self, "_on_StickToMe_body_entered")
	
	if error: 
		print("error in StickToMe connection", error)


func _on_StickToMe_body_entered(body):

	if body.is_in_group("pickable"):
		
		if body.get("owner"):
			var owner = body.owner
			var owner_global_transform = body.get_global_transform()
			
			# Remove the group so it cannot be picked up again, because it is already sticking, duh.
			body.remove_from_group("pickable")
			body.remove_from_group("pickable_candidate")
			
			# Remove the staticBody from its parent
			body.get_parent().remove_child(body);
			
			# Remove the whole scene (e.g. an Avocado)  from its parent
			owner.get_parent().remove_child(owner);
			
			add_child(owner)
			owner.set_global_transform(owner_global_transform)
		
			EventBus.publish("sticked", body)
		
