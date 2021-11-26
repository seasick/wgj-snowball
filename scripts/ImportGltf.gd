tool # Needed so it runs in editor
extends EditorScenePostImport

var do_not_group = [
	"road_straight", "road_bend", "road_crossroad", "road_intersection", "road_endRound", 
	"road_roundabout", "snowPatch", "island_big", "island_small"
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
			node.get_child(0).add_to_group("pickable_candidate", true)
	else:
		if node.get_child_count() > 0:
			iterate(node.get_child(0), filename)
