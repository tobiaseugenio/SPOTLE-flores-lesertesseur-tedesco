extends Control

func _on_pelis_boton_pressed() -> void:
	ModosDeJuego.current_mode = ModosDeJuego.ModosDeJuego.MOVIES
	get_tree().change_scene_to_file("res://scenes/framed/framed.tscn")

func _on_videoclips_boton_pressed() -> void:
	ModosDeJuego.current_mode = ModosDeJuego.ModosDeJuego.VIDEOCLIPS
	get_tree().change_scene_to_file("res://scenes/framed/framed.tscn")
