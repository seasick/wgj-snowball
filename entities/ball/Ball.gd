extends "res://entities/ball/StickToMe.gd"


export (int) var rolling_force = 50

var superficial_weight = 5
var max_percentage_of_weight = 0.5


func _ready():
	# Camera is parented to the Ball, but we don't want it to rotate
	# along with the Ball. This line of code tells Godot to ignore the Ball's
	# transformations, it will be as if the CameraRig is parented to Level01
	$CameraRig.set_as_toplevel(true)
	# Capture Mouse Pointer
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

	# Make sure FloorCheck raycast doesn't inherit Balls transforms,
	# so that it doesn't rotate as the ball rolls
	$GroundCheck.set_as_toplevel(true)

	EventBus.subscribe("sticked", self, "_on_EventBus_sticked")

	GameData.data.max_stickee_volume = 2

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
		if Input.is_action_pressed("forward"):
			_move_in_direction(delta, 1)
		elif Input.is_action_pressed("back"):
			_move_in_direction(delta, -1)

func _move_in_direction(delta, forward):
	var force = rolling_force * delta
	var angle = $CameraRig.rotation.y
		
	apply_central_impulse(Vector3(sin(angle), 0, cos(angle)) * -force * forward)

func _input(event):         
	if event is InputEventMouseMotion:
		var sensitivity = 0.7
		var delta = deg2rad(-event.relative.x * sensitivity)

		$CameraRig.rotate_y(delta)
		
	# set mouse cursor visible again
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
	# caputre mouse again on click
	if event.is_action_pressed("click"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _on_EventBus_sticked(stickee):
	var increase = 1 
	
	superficial_weight += stickee.pickable_weight
	increase += stickee.pickable_weight / superficial_weight / 20
	
	GameData.data.max_stickee_volume = superficial_weight * max_percentage_of_weight

	# TODO use stickee weight to determine increase

	# Increase the scale of the "PickableDecider"
	$PickableDecider.get_child(0).scale *= increase
	$PickableDecider.get_child(1).scale *= increase # and its debbugging view
	$CameraRig.scale *= increase * 1.02
	$CollisionShape.scale *= increase
	$snowball.scale *= increase

