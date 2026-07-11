extends Node

@onready var verificadorEstadoBotones = $"../VerificadorEstadoBotones"
@onready var cargarPartida = $"../CargarPartida"
@onready var botonVerificar= $"../verificar"
@onready var opcionesElegidas = verificadorEstadoBotones.opcionesElegidas

var opcionesCorrectas = []

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
	
	for opcion in opcionesElegidas:
		if opcionesCorrectas.find(opcion):
			print("elegido correctamente")

func buscarCategoriaCorrecta():
	for categoria in cargarPartida.categoriasActivas:
		pass
