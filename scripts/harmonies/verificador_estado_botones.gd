extends Node
@onready var botones = $"../GridContainer".get_children()
var opcionesElegidas= []
const maxOpciones = 4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func botonPresionado(boton: Button):
	#print("verificadorEstado botonPresionado -> ", boton)
	if boton.button_pressed:
		agregarOpcion(boton)
	else:
		sacarOpcion(boton)

	#mostrarOpcionesElegidas()

func mostrarOpcionesElegidas():
	print("----------------------")
	for opcion in opcionesElegidas:
		print("estadoBotones mostrarOpcionesElegidas -> ", opcion)
	
func agregarOpcion(boton: Button):
	if boton in opcionesElegidas:
		return
	
	if opcionesElegidas.size() >= maxOpciones:
		boton.button_pressed= false
		print("agregarOpcion -> maximo de opciones")
		return
		
	opcionesElegidas.append(boton)

func sacarOpcion(boton: Button):
	if boton in opcionesElegidas:
		opcionesElegidas.erase(boton)
