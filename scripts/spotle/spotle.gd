extends Control

@onready var barraBusq = $VBoxContainer/LineEdit
@onready var lista = $VBoxContainer/ItemList
@onready var contIntentos =  $VBoxContainer/ScrollContainer/contenedorIntentos

var escenaFila
var listaItems
var artistaSecreto: Dictionary
var intentos = 0
var artistasIntentados: Array = []

func _ready():
	if ModoJuego.modo == "pelis":
		escenaFila = preload("res://scenes/spotle/fila_intento_p.tscn")
		listaItems = Peliculas.LISTA_PELICULAS
		artistaSecreto = listaItems.pick_random()
	else:
		escenaFila = preload("res://scenes/spotle/fila_intento.tscn")
		listaItems = Artistas.LISTA_ARTISTAS
		artistaSecreto = SelectorArtista.elegirArtista()
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
		$ganasteCartel.show()
	elif intentos >= 10:
		$perdisteCartel.show()
		$perdisteCartel.mostrarNombreSecreto(artistaSecreto["nombre"])
	
	if nombre in artistasIntentados:
		$intentado.show()
		await get_tree().create_timer(3.0).timeout
		$intentado.hide()
		return
	artistasIntentados.append(nombre)
	intentos += 1
	$VBoxContainer/labelIntentos.text = str(intentos) + " de 10 intentos"
	
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
