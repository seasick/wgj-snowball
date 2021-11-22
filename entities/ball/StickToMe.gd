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

		# Remove the group so it cannot be picked up again, because it is already sticking, duh.
		body.remove_from_group("pickable")
		body.remove_from_group("pickable_candidate")

		var temp = body.get_global_transform()

		# reparent collider and keep global position
		body.get_parent().remove_child(body)
		add_child(body)
		body.set_global_transform(temp)
		
		# set mass of rigidbody to nearly zero, to avoid physics fuzzing and jiggling around
		body.mass = 0.01

		# Add sticking script to collider, so other things will stick to it
		body.set_script(load("res://entities/ball/StickToMe.gd"))
		body._ready()
		
		EventBus.publish("sticked", body)
