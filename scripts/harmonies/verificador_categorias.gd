extends Node

@onready var verificadorEstadoBotones = $"../VerificadorEstadoBotones"
@onready var cargarPartida = $"../CargarPartida"
@onready var botonVerificar= $"../verificar"
@onready var opcionesElegidas = verificadorEstadoBotones.opcionesElegidas
@onready var categoriasActivas = cargarPartida.categoriasActivas

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	botonVerificar.pressed.connect(verificarCategoria)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func verificarCategoria():
	if opcionesElegidas.size() != 4:
		print("verificarCategoria -> menos de 4 opcines elegidas")
		return
	var opcionesCorrectas = []
	for boton in opcionesElegidas:
		opcionesCorrectas.append(boton.text)
	opcionesCorrectas.sort()
	
	buscarCategoriaCorrecta(opcionesCorrectas)

func buscarCategoriaCorrecta(opcionesCorrectas: Array):
	for categoria in categoriasActivas:
		var opcionCategoriaActiva = categoria.opciones.duplicate()
		opcionCategoriaActiva.sort()
		
		if opcionCategoriaActiva == opcionesCorrectas:
			print("buscarCategoriaCorrecta -> bien")
			bloquearBotones()
			opcionesElegidas.clear()
			
	if botonesDesabilitados():
		print("victoria")
	
	return
	print("buscarCategoriaCorrecta -> mal")
	cargarPartida.intentosRestantes -= 1

func bloquearBotones():
	for boton in opcionesElegidas:
		boton.disabled = true
		
func botonesDesabilitados() -> bool:
	for boton in cargarPartida.botones:
		if boton is Button and not boton.disabled:
			return false
	return true
