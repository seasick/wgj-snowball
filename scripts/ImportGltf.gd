tool # Needed so it runs in editor
extends EditorScenePostImport

# Called right after the scene is imported and gets the root node
func post_import(scene):
	
	# Create collision
	iterate(scene)
	var packed_scene = PackedScene.new()
	packed_scene.pack(scene)
	var filename = get_source_file().split("/")[-1].split(".")[0]
	ResourceSaver.save("res://assets/imported/" + filename + ".tscn", packed_scene)
	return scene # Remember to return the imported scene


func iterate(node: Node):
	if node is MeshInstance:
		(node as MeshInstance).create_trimesh_collision()
	else:
		if node.get_child_count() > 0:
			iterate(node.get_child(0))
