extends Control

var pelicula_actual: Dictionary
var frame_actual := 0

func _ready():
	nueva_partida()

func nueva_partida():
	pelicula_actual = FramesPelis.peliculas.pick_random()
	frame_actual = 0
	mostrar_frame()

func mostrar_frame():
	var ruta = pelicula_actual["frames"][frame_actual]
	$TextureRect.texture = load(ruta)

func revelar_siguiente():
	if frame_actual < 5:
		frame_actual += 1
		mostrar_frame()
	else:
		juego_terminado(false)

func validar_respuesta(texto: String):
	var intento = texto.strip_edges().to_lower()
	if intento in pelicula_actual["respuestas"]:
		juego_terminado(true)
	else:
		revelar_siguiente()

func juego_terminado(gano: bool):
	if gano:
		print("Ganaste!")
	else:
		print("Perdiste - era: ", pelicula_actual["titulo"])
		
func _on_line_edit_text_changed(text):
	actualizar_sugerencias(text)

func actualizar_sugerencias(texto):
	$ItemList.clear()
	
	if texto == "":
		$ItemList.visible = false
		return
	var hay_resultados := false

	for peli in FramesPelis.peliculas:
		if peli["titulo"].to_lower().contains(texto.to_lower()):
			$ItemList.add_item(peli["titulo"])
			hay_resultados = true
	$ItemList.visible = hay_resultados
	
func _on_item_list_item_clicked(index, at_position, mouse_button_index):
	var titulo = $ItemList.get_item_text(index)
	validar_respuesta(titulo)

func _on_line_escribir_text_changed(texto: String) -> void:
	$ItemList.visible = texto != ""
	actualizar_sugerencias(texto)
