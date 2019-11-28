extends Control

export (String, FILE, "") var next_scene

func _ready():
	get_tree().set_pause(false)
	$ani_player.play("fade")
	pass

func change_scene(to = next_scene):
	$ani_player.play_backwards("fade")
	yield($ani_player, "animation_finished")
	if get_tree().change_scene(to) != 0:
		get_tree().quit()
	pass