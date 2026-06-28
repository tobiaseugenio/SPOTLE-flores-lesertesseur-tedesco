extends Control
signal juegoTerminado(gano: bool)

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_btn_musica_pressed() -> void:
	ModoJuego.modo = "musica"
	var juego = preload("res://scenes/spotle/spotle.tscn").instantiate()
	juego.juegoTerminado.connect(_on_juego_terminado_recibido)
	add_child(juego)


func _on_btn_pelis_pressed() -> void:
	ModoJuego.modo = "pelis"
	var juego = preload("res://scenes/spotle/spotle.tscn").instantiate()
	juego.juegoTerminado.connect(_on_juego_terminado_recibido)
	add_child(juego)

func _on_como_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/spotle/explicacionSpotle.tscn")
	
func _on_juego_terminado_recibido(gano: bool):
	juegoTerminado.emit(gano)
	queue_free()
