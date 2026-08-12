extends Node

var categoriasActivas = []
@onready var botones = $"../GridContainer".get_children()
@export var intentosRestantes = 4

func _ready() -> void:
	cargarPartida()

func cargarPartida():
	var todasLasCategorias = CategoriasHarmonies.CATEGORIAS_HARMONIES.duplicate()
	var categoriasFiltradas = []
	for categoria in todasLasCategorias:
		if ModoJuego.modo == "musica" and categoria["categoria"] == "musica":
			categoriasFiltradas.append(categoria)
		elif ModoJuego.modo == "pelis" and categoria["categoria"] == "peliculas":
			categoriasFiltradas.append(categoria)
	categoriasFiltradas.shuffle()
	categoriasActivas = categoriasFiltradas.slice(0, min(4, categoriasFiltradas.size()))
	
	var opcionesMezcladas = []
	for categoria in categoriasActivas:
		opcionesMezcladas.append_array(categoria["opciones"])
		
	opcionesMezcladas.shuffle()
	
	for i in range(botones.size()):
		if botones[i] is Button:
			botones[i].text = opcionesMezcladas[i]
