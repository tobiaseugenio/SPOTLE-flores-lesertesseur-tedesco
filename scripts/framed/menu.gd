extends Control

func _on_pelis_boton_pressed() -> void:
	$aceptar.play()
	await $aceptar.finished
	ModosDeJuego.current_mode = ModosDeJuego.ModosDeJuego.MOVIES
	get_tree().change_scene_to_file("res://scenes/framed/framed.tscn")

func _on_videoclips_boton_pressed() -> void:
	$aceptar.play()
	await $aceptar.finished
	ModosDeJuego.current_mode = ModosDeJuego.ModosDeJuego.VIDEOCLIPS
	get_tree().change_scene_to_file("res://scenes/framed/framed.tscn")

func _on_videoclips_button_mouse_entered() -> void:
	$hover.play()

func _on_pelis_button_mouse_entered() -> void:
	$hover.play()
