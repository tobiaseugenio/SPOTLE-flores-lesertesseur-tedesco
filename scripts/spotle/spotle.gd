extends Control

@onready var barraBusq = $VBoxContainer/LineEdit
@onready var lista = $VBoxContainer/ItemList
@onready var contIntentos =  $VBoxContainer/ScrollContainer/contenedorIntentos

var escenaFila
var listaItems
var artistaSecreto: Dictionary
var intentos = 0
var intentosMaximos = 10
var artistasIntentados: Array = []
signal juegoTerminado(gano: bool)

func _ready():
	if ModoJuego.modo == "pelis":
		$VBoxContainer/LineEdit.placeholder_text = "escribe el título de una pelicula"
		escenaFila = preload("res://scenes/spotle/fila_intento_p.tscn")
		listaItems = Peliculas.LISTA_PELICULAS
		artistaSecreto = listaItems.pick_random()
	else:
		$VBoxContainer/LineEdit.placeholder_text = "escribe el nombre de un artista o banda"
		escenaFila = preload("res://scenes/spotle/fila_intento.tscn")
		listaItems = Artistas.LISTA_ARTISTAS
		artistaSecreto = SelectorArtista.elegirArtista()
		
	intentosMaximos += GestorJuego.intentosExtra
	GestorJuego.intentosExtra = 0
	
	lista.hide()
	$intentado.hide()
	$ganasteCartel.hide()
	$perdisteCartel.hide()
	
func _on_line_edit_text_changed(nuevoTexto: String):
	lista.clear() 
	
	if nuevoTexto.is_empty():
		lista.hide()
		return
		
	var hayResultados = false
	
	for artista in listaItems: 
		if nuevoTexto.to_lower() in artista["nombre"].to_lower(): 
			lista.add_item(artista["nombre"]) 
			hayResultados = true
			
	if hayResultados:
		lista.show()
	else:
		lista.hide()
	
func _on_item_list_item_selected(index: int) -> void:
	var nombre = lista.get_item_text(index)
	
	if nombre == artistaSecreto["nombre"]:
		$ganasteCartel.scale = Vector2.ZERO
		$ganasteCartel.show()
		
		var tween = create_tween()
		tween.set_trans(Tween.TRANS_BACK)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property($ganasteCartel, "scale", Vector2.ONE, 0.25)

		GestorJuego.ganoElJuego = true
		get_tree().change_scene_to_file("res://scenes/tablero.tscn")
		juegoTerminado.emit(true)
		queue_free()
		return
	
	if nombre in artistasIntentados:
		$intentado.show()
		await get_tree().create_timer(3.0).timeout
		$intentado.hide()
		return
	artistasIntentados.append(nombre)
	intentos += 1
	$VBoxContainer/labelIntentos.text = str(intentos) + " de " + str(intentosMaximos) + " intentos"
	
	var datosArtista = {}
	
	for artista in listaItems: 
		if artista["nombre"] == nombre: 
			datosArtista = artista
			break
	
	var nuevaFila = escenaFila.instantiate()
	contIntentos.add_child(nuevaFila)
	contIntentos.move_child(nuevaFila, 0)
	
	nuevaFila.compararDatos(datosArtista, artistaSecreto)
	
	barraBusq.text = ""
	lista.hide()
	
	if intentos >= intentosMaximos:
		$perdiste.play()
		$perdisteCartel.scale = Vector2.ZERO
		$perdisteCartel.show()
		$perdisteCartel.mostrarNombreSecreto(artistaSecreto["nombre"])
		
		var tween = create_tween()
		tween.set_trans(Tween.TRANS_BACK)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property($perdisteCartel, "scale", Vector2.ONE, 0.25)

		GestorJuego.ganoElJuego = false
		await $perdiste.finished
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://scenes/tablero.tscn")
		juegoTerminado.emit(false)
		queue_free()
		return
