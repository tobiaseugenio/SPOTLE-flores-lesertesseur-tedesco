extends Control

const intro = "user://introvista.save"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_start_pressed() -> void:
	$aceptar.play()
	await $aceptar.finished 
	if FileAccess.file_exists(intro):
		get_tree().change_scene_to_file("res://scenes/elegir_personaje.tscn")
		return

	var file = FileAccess.open(intro, FileAccess.WRITE)
	if file:
		file.store_string("vista")
	get_tree().change_scene_to_file("res://scenes/explicacionMuvie.tscn")

func _on_button_start_mouse_entered() -> void:
	$hover.play()
