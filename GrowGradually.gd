extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	return # XXX: enable if necessary  
	
	var meshInstance = get_parent().get_node("MeshInstance")
	var collisionShape = get_parent().get_node("CollisionShape")
	var cameraRig = get_parent().get_node("CameraRig")
	# increase scale of object
	
	meshInstance.scale.x = meshInstance.scale.x * (1 + delta / 10)
	meshInstance.scale.y = meshInstance.scale.y * (1 + delta / 10)
	meshInstance.scale.z = meshInstance.scale.z * (1 + delta / 10)

	# collisionShape.scale *= 1 + delta / 10
	# collisionShape.scale.x = collisionShape.scale.x * (1 + delta / 10)
	# collisionShape.scale.y = collisionShape.scale.y * (1 + delta / 10)
	# collisionShape.scale.z = collisionShape.scale.z * (1 + delta / 10)
	
	cameraRig.scale.x = cameraRig.scale.x * (1 + delta / 10)
	cameraRig.scale.y = cameraRig.scale.y * (1 + delta / 10)
	cameraRig.scale.z = cameraRig.scale.z * (1 + delta / 10)
	
	pass
