extends Control

@onready var barraBusq = $VBoxContainer/LineEdit
@onready var lista = $VBoxContainer/ItemList
@onready var contIntentos =  $VBoxContainer/ScrollContainer/contenedorIntentos

var escenaFila = preload("res://scenes/fila_intento.tscn")
var artistaSecreto: Dictionary
var intentos = 0

func _ready():
	artistaSecreto = SelectorArtista.elegirArtista() 
	lista.hide()
	
func _on_line_edit_text_changed(nuevoTexto: String):
	lista.clear() 
	
	if nuevoTexto.is_empty():
		lista.hide()
		return
		
	var hayResultados = false
	
	for artista in Artistas.LISTA_ARTISTAS: 
		if nuevoTexto.to_lower() in artista["nombre"].to_lower(): 
			lista.add_item(artista["nombre"]) 
			hayResultados = true
			
	if hayResultados:
		lista.show()
	else:
		lista.hide()
	
func _on_item_list_item_selected(index: int) -> void:
	var nombre = lista.get_item_text(index)
	
	if intentos >= 10: return
	intentos += 1
	
	var datosArtista = {}
	
	for artista in Artistas.LISTA_ARTISTAS: 
		if artista["nombre"] == nombre: 
			datosArtista = artista
			break
	
	var nuevaFila = escenaFila.instantiate()
	contIntentos.add_child(nuevaFila)
	contIntentos.move_child(nuevaFila, 0)
	
	nuevaFila.compararDatos(datosArtista, artistaSecreto)
	
	barraBusq.text = ""
	lista.hide()
