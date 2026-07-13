extends Node
@onready var textoIntentosRestantes = $"../HBoxContainer/intentosRestantes"
@onready var cargarPartida = $"../CargarPartida"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	textoIntentosRestantes.text = str(cargarPartida.intentosRestantes)
