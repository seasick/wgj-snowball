extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(40000)
	# TODO Without a large value for `set_max_contacts_reported` above , things will stop sticking
	# to the  ball. There has to be a better way.

	connect("body_entered", self, "_on_StickToMe_body_entered")


func _on_StickToMe_body_entered(body):

	if body.is_in_group("pickable"):
		# TODO Check if the object is small enough to be picked up

		# Remove the group so it cannot be picked up again, because it is already sticking, duh.
		body.remove_from_group("pickable")

		var temp = body.get_global_transform()

		# reparent collider and keep global position
		body.get_parent().remove_child(body)
		add_child(body)
		body.set_global_transform(temp)

		# Add sticking script to collider, so other things will stick to it
		body.set_script(load("res://StickToMe.gd"))
		body._ready()
