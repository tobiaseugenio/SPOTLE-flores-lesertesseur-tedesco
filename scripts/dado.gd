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

	var tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.set_ease(Tween.EASE_OUT)
	tween.tween_property(spriteDado, "rotation_degrees", spriteDado.rotation_degrees + 720.0, 0.3)
	tween.parallel().tween_property(spriteDado, "scale", Vector2(0.35, 0.35), 0.15)
	tween.tween_property(spriteDado, "scale", Vector2.ONE, 0.15)
	await tween.finished
	
	spriteDado.visible = false
	colorRect.visible = true
	label.text = str(numRandom)
	dado_tirado.emit(numRandom)
	await get_tree().create_timer(2.5).timeout
	volverAmostrarDado()
	
func volverAmostrarDado():
	spriteDado.rotation_degrees = 0.0
	spriteDado.scale = Vector2.ONE
	spriteDado.visible = true
	colorRect.visible = false
	dadoFueTirado = false
