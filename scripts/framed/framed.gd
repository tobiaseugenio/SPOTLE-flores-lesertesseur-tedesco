extends Control

var item_actual: Dictionary
var frame_actual := 0
var items: Array = []
var intentosMaximos = 5
signal juegoTerminado(gano: bool)

func _ready():
	for i in range(6):
		var boton = $ContenedorBotones.get_child(i)
		boton.pressed.connect(_on_boton_frame_pressed.bind(i))

	match ModosDeJuego.current_mode:
		ModosDeJuego.ModosDeJuego.MOVIES:
			items = Moviesframed.get_all()
		ModosDeJuego.ModosDeJuego.VIDEOCLIPS:
			items = Videoclips.get_all()

	items.shuffle()
	$ganasteCartel.hide()
	$perdisteCartel.hide()
	nueva_partida()

func _on_boton_frame_pressed(indice: int):
	frame_actual = indice
	mostrar_frame()

func nueva_partida():
	item_actual = items.pick_random()
	frame_actual = 0
	mostrar_frame()
	actualizar_botones()

func mostrar_frame():
	var ruta = item_actual["frames"][frame_actual]
	print(ruta)
	var textura = load(ruta)
	if textura == null:
		print("ERROR: no se encontró la imagen en ", ruta)
		return
	$Foto.texture = textura

func actualizar_botones():
	for i in range(6):
		var boton = $ContenedorBotones.get_child(i)
		boton.disabled = i > frame_actual

func revelar_siguiente():
	if frame_actual < 5:
		frame_actual += 1
		mostrar_frame()
		actualizar_botones()
	else:
		juego_terminado(false)

var juego_activo := true

func validar_respuesta(texto: String):
	if not juego_activo:
		return
	var intento = texto.strip_edges().to_lower()
	if intento in item_actual["alternativas"] or intento == item_actual["titulo"].to_lower():
		juego_terminado(true)
	else:
		revelar_siguiente()

func juego_terminado(gano: bool):
	juego_activo = false
	$LineEscribir.editable = false
	$ItemList.visible = false

	GestorJuego.ganoElJuego = gano
	juegoTerminado.emit(gano)

	if gano:
		$ganasteCartel.scale = Vector2.ZERO
		$ganasteCartel.show()
		var tween = create_tween()
		tween.set_trans(Tween.TRANS_BACK)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property($ganasteCartel, "scale", Vector2.ONE, 0.25)
	else:
		$perdiste.play()
		$perdisteCartel.scale = Vector2.ZERO
		$perdisteCartel.show()
		var info = item_actual["titulo"]
		if item_actual.has("artista"):
			info += " - " + item_actual["artista"]
		$perdisteCartel.mostrarNombreSecreto(info)
		var tween = create_tween()
		tween.set_trans(Tween.TRANS_BACK)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property($perdisteCartel, "scale", Vector2.ONE, 0.25)

	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://scenes/tablero.tscn")

func actualizar_sugerencias(texto: String):
	$ItemList.clear()
	if texto == "":
		$ItemList.visible = false
		return
	var hay_resultados := false
	for item in items:
		if item["titulo"].to_lower().contains(texto.to_lower()):
			$ItemList.add_item(item["titulo"])
			hay_resultados = true
	$ItemList.visible = hay_resultados

func _on_line_escribir_text_submitted(texto: String) -> void:
	$ItemList.visible = false
	validar_respuesta(texto)
	$LineEscribir.clear()

func _on_line_escribir_text_changed(texto: String) -> void:
	actualizar_sugerencias(texto)

func _on_item_list_item_selected(index: int) -> void:
	var titulo = $ItemList.get_item_text(index)
	$ItemList.visible = false
	$LineEscribir.clear()
	validar_respuesta(titulo)
