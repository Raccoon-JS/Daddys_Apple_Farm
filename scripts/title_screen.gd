extends Node

func _ready():
	$ani_player.play("begin")
	randomize()
	$background.color = colors.orange
	$images/family.modulate = colors.dark_green
	$title.modulate = colors.red
	$buttons.modulate = colors.red
	pass 

func _process(_delta):
	if $music.playing != true:
		$music.play(0.0)
		$music.volume_db = rand_range(-40.0,-20.0)
		$music.pitch_scale = rand_range(0.5,2.5)
	pass

func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.

func _on_ani_player_animation_finished(anim_name):
	if anim_name == "begin":
		$cover.visible = false
	pass # Replace with function body.
