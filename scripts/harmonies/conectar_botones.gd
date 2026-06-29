extends Node
@onready var botones = $"../GridContainer".get_children()
@onready var verificadorEstadoBotones = $"../VerificadorEstadoBotones"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	conectarBotones()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func conectarBotones():
	for boton in botones:
		if boton is Button:
			#boton.pressed.connect(verificadorEstadoBotones.botonPresionado)
			verificadorEstadoBotones.botonPresionado(boton)
			#boton.pressed.connect(verificadorEstadoBotones.botonPresionado(boton).bind(boton))	


#func botonPresionado(boton: Button):
	#print("botonPresionado -> ", boton)
