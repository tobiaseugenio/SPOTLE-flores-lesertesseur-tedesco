extends Node2D

@onready var pathFollow_p1 = $"Path2D/PathFollow2D-P1"
var casilleroActual: int = 0 

const CASILLEROS = [ 
	"normal", "spotle", "framed", "harmonies", "spotle", "framed", "spotle", "harmonies", "framed", 
	"harmonies", "harmonies", "malo", "spotle", "malo", "malo", "framed", "spotle", "harmonies", 
	"framed", "spotle", "framed", "harmonies", "malo", "spotle", "framed", "harmonies", "spotle", 
	"harmonies", "framed", "spotle", "harmonies", "spotle", "framed", "framed" ]
const TAM_PXS = 32 
const TAM_CASILLERO = TAM_PXS * 3#pq por ahora ocupa 3 cuadrados cada casillerito

func _ready():
	pathFollow_p1.progress = 0
	$dado.dado_tirado.connect(_on_dado_dado_tirado)

func _on_dado_dado_tirado(resultado: int):
	print("el dado sacó un: ", resultado)
	moverJugador(resultado)

func moverJugador(num: int):
	casilleroActual = min(casilleroActual + num, 32)
	var distanciaPxs = num * (TAM_CASILLERO)
	var destino = pathFollow_p1.progress + distanciaPxs
	
	var tween = create_tween()
	# aceleración y desaceleración suave
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(pathFollow_p1, "progress", destino, 1.5)
	await tween.finished
	print(str(casilleroActual))
	if CASILLEROS[casilleroActual] == "spotle":
		get_tree().change_scene_to_file("res://scenes/spotle/decidirSpotle.tscn")
