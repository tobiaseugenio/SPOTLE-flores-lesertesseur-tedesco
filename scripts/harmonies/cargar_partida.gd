extends Node

var categoriasActivas = []
@onready var botones = $"../GridContainer".get_children()
@export var intentosRestantes = 4

func _ready() -> void:
	cargarPartida()

func cargarPartida():
	var todasLasCategorias = CategoriasHarmonies.CATEGORIAS_HARMONIES
	categoriasActivas = todasLasCategorias.slice(0, 4)
	
	var opcionesMezcladas = []
	for categoria in categoriasActivas:
		opcionesMezcladas.append_array(categoria["opciones"])
		
	opcionesMezcladas.shuffle()
	
	for i in range(botones.size()):
		if botones[i] is Button:
			botones[i].text = opcionesMezcladas[i]
