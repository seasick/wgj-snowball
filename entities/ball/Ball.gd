extends "res://scripts/StickToMe.gd"


export var rolling_force = 20
export var min_velocity = -5
export var max_velocity = 5


func _ready():
	# Camera is parented to the Ball, but we don't want it to rotate
	# along with the Ball. This line of code tells Godot to ignore the Ball's
	# transformations, it will be as if the CameraRig is parented to Level01
	$CameraRig.set_as_toplevel(true)

	# Make sure FloorCheck raycast doesn't inherit Balls transforms,
	# so that it doesn't rotate as the ball rolls
	$GroundCheck.set_as_toplevel(true)

	EventBus.subscribe("sticked", self, "_on_EventBus_sticked")
	

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
			angular_velocity.x = clamp(angular_velocity.x - rolling_force*delta, min_velocity, max_velocity)
		elif Input.is_action_pressed("back"):
			angular_velocity.x = clamp(angular_velocity.x + rolling_force * delta, min_velocity, max_velocity)
		if Input.is_action_pressed("left"):
			angular_velocity.z = clamp(angular_velocity.z + rolling_force * delta, min_velocity, max_velocity)
		elif Input.is_action_pressed("right"):
			angular_velocity.z = clamp(angular_velocity.z - rolling_force * delta, min_velocity, max_velocity)

func _on_EventBus_sticked(stickee):
	var increase = 1.005

	if stickee.has_node("MeshInstance"):
		var aabb = stickee.get_node("MeshInstance").get_transformed_aabb()
		var longest_axis = aabb.get_longest_axis_size()

		# use longest axis to aproximate how much was added to the ball.
		# TODO: Even better would be to calculate the volume of the body which was added to the ball
		increase = 1 + longest_axis / 140
		
	# Increase the scale of the "PickableDecider"
	$PickableDecider.get_child(0).scale *= increase
	$PickableDecider.get_child(1).scale *= increase # and its debbugging view

