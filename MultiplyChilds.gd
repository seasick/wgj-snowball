extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var count = 500
export (PackedScene) var node

# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	
	for i in count:
		var inst = node.instance()
		
		add_child(inst)
		
		inst.global_transform.origin = Vector3(
			rng.randf_range(30.0, -30.0), 
			2, 
			rng.randf_range(30.0, -30.0)
		)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
