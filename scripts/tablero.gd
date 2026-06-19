extends Node2D

@onready var pathFollow_p1 = $"Path2D/PathFollow2D-P1"
const TAM_PXS = 32 
const TAM_CASILLERO = TAM_PXS * 3 #pq por ahora ocupa 3 cuadrados cada casillerito

func _ready():
	pathFollow_p1.progress = 0
	$dado.dado_tirado.connect(_on_dado_dado_tirado)

func _on_dado_dado_tirado(resultado: int):
	print("el dado sacó un: ", resultado)
	moverJugador(resultado)

func moverJugador(num: int):
	var distanciaPxs = num * (TAM_CASILLERO)
	var destino = pathFollow_p1.progress + distanciaPxs
	
	var tween = create_tween()
	# aceleración y desaceleración suave
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(pathFollow_p1, "progress", destino, 1.5)
	
	await tween.finished
