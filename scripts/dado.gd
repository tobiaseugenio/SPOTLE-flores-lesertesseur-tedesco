extends Area2D

signal dado_tirado(numRandom: int)

@onready var spriteDado = $spriteDado
@onready var colorRect = $ColorRect
@onready var label = $ColorRect/Label 

var dadoFueTirado = false

func _ready():
	spriteDado.visible = true
	colorRect.visible = false

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if !dadoFueTirado:
			tirarDado() 

func tirarDado():
	dadoFueTirado = true
	var numRandom = randi_range(1, 6)
	
	spriteDado.visible = false
	colorRect.visible = true
	label.text = str(numRandom)
	dado_tirado.emit(numRandom)
	
	await get_tree().create_timer(2.5).timeout
	volverAmostrarDado()
	
func volverAmostrarDado():
	spriteDado.visible = true
	colorRect.visible = false
	dadoFueTirado = false
