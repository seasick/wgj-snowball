tool # Needed so it runs in editor
extends EditorScenePostImport

var do_not_group = [
	"road_straight", "road_bend", "road_crossroad", "road_intersection", "road_endRound",
	"road_roundabout", "snowPatch", "island_big", "island_small", "tower", "ship_light",
	"ship_light2", "ship_dark", "ship_wreck"
]

# Called right after the scene is imported and gets the root node
func post_import(scene):
	var packed_scene = PackedScene.new()
	var filename = get_source_file().split("/")[-1].split(".")[0]

	# Create collision
	iterate(scene, filename)

	packed_scene.pack(scene)
	ResourceSaver.save("res://assets/imported/" + filename + ".tscn", packed_scene)

	return scene # Remember to return the imported scene


func iterate(node: Node, filename: String):

	if node is MeshInstance:

		(node as MeshInstance).create_trimesh_collision()
		(node as MeshInstance).translation = Vector3.ZERO
		(node as MeshInstance).use_in_baked_light = true

		# Set group of static body
		if do_not_group.find(filename) == -1:
			
			
			var static_body = _get_first_static_body(node)
			
			static_body.script = load("res://scripts/PickableItem.gd")
			static_body.add_to_group("pickable_candidate", true)
			static_body.label_group = filename
			static_body.pickable_weight = 1
			
			if filename.begins_with("skyscraper"):
				static_body.label_group = "skyscraper"
				static_body.pickable_weight = 250
				
			elif filename.begins_with("tree"):
				static_body.label_group = "tree"
				static_body.pickable_weight = 50
				
			elif filename.begins_with("bench"):
				static_body.pickable_weight = 25
				
			elif filename.begins_with("house_type"):
				static_body.label_group = "house_type"
				static_body.pickable_weight = 100
				
			elif filename.begins_with("present"):
				static_body.pickable_weight = 1
				
			elif filename.begins_with("trainWagon"):
				static_body.pickable_weight = 2
				
			elif filename.begins_with("snowman"):
				static_body.label_group = "snowman"
				static_body.pickable_weight = 10
				
			elif filename.begins_with("cannon"):
				static_body.pickable_weight = 10
				
			elif filename.begins_with("bacon"):
				static_body.pickable_weight = 1
				
			elif filename.begins_with("burger"):
				static_body.pickable_weight = 1
				
			elif filename.begins_with("cocktail"):
				static_body.pickable_weight = 1
	else:
		if node.get_child_count() > 0:
			iterate(node.get_child(0), filename)

func _get_first_static_body(node):
	for i in node.get_child_count():
		if node.get_child(i) is StaticBody:
			return node.get_child(i)
