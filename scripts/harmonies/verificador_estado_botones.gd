extends Node
@onready var botones = $"../GridContainer".get_children()
var opcionesElegidas= []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func botonPresionado(boton: Button):
	#print("verificadorEstado botonPresionado -> ", boton)
	opcionesElegidas.append(boton)
	mostrarOpcionesElegidas()

func mostrarOpcionesElegidas():
	for opcion in opcionesElegidas:
		print("mostrarOpcionesElegidas() -> ", opcion)
	
	
	
