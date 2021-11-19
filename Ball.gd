extends RigidBody

var rolling_force = 20

func _ready():
	# Camera is parented to the Ball, but we don't want it to rotate
	# along with the Ball. This line of code tells Godot to ignore the Ball's 
	# transformations, it will be as if the CameraRig is parented to Level01
	$CameraRig.set_as_toplevel(true)

func _physics_process(delta):
	# Move the camera along with the ball
	$CameraRig.global_transform.origin = lerp(
		$CameraRig.global_transform.origin, 
		global_transform.origin, 0.1
	)

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

func _process(delta):
	# the ball should grow gradually when the ball moves 
	var x = 1
