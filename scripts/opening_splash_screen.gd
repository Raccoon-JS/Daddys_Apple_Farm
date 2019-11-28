extends "res://scripts/template_scripts/splash_screen.gd"

export (String) var new_anim

func _ready():
	$background.color = colors.orange
	#$logos/raccoon.modulate = colors.light_green
	$links.modulate = colors.red
	pass

func _on_ani_player_finished(anim_name):
	if anim_name == "fade":
		$ani_player.play(new_anim)
		yield($ani_player, "animation_finished")
		change_scene()
	pass # Replace with function body.
