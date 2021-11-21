extends "res://StickToMe.gd"

var rolling_force = 20

func _ready():
	# Camera is parented to the Ball, but we don't want it to rotate
	# along with the Ball. This line of code tells Godot to ignore the Ball's
	# transformations, it will be as if the CameraRig is parented to Level01
	$CameraRig.set_as_toplevel(true)

	# Make sure FloorCheck raycast doesn't inherit Balls transforms,
	# so that it doesn't rotate as the ball rolls
	$GroundCheck.set_as_toplevel(true)

	# Enable collision monitoring
	set_contact_monitor(true)
	set_max_contacts_reported(40000)
	# TODO Without a large value for `set_max_contacts_reported` above , things will stop sticking
	# to the  ball. There has to be a better way.


func _physics_process(delta):
	# Move the camera along with the ball
	$CameraRig.global_transform.origin = lerp(
		$CameraRig.global_transform.origin,
		global_transform.origin, 0.1
	)

	# As the ball moves, move the Groundcheck raycast along with it
	$GroundCheck.global_transform.origin = global_transform.origin

	# Only apply forces when the ball is touching ground
	if $GroundCheck.is_colliding():
		# Move the ball in response to player pressing the buttons.
		# When the button is pressed, we increase the angular velocity
		# of the RigidBody in the corresponding dierction, making the ball spin.
		# The rest is handled by the physics engine, when the ball spins - it rolls.

		if Input.is_action_pressed("forward"):
			angular_velocity.x -= rolling_force*delta
		elif Input.is_action_pressed("back"):
			angular_velocity.x += rolling_force*delta
		if Input.is_action_pressed("left"):
			angular_velocity.z += rolling_force*delta
		elif Input.is_action_pressed("right"):
			angular_velocity.z -= rolling_force*delta
