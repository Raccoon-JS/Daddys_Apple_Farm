extends Button

export(String, FILE, "*.tscn") var scene_path

func change_scene():
	if get_tree().change_scene(scene_path) != 0:
		get_tree().quit()
	pass # Replace with function body.
