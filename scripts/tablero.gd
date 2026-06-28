extends Node2D

@onready var pathFollow_p1 = $"Path2D/PathFollow2D-P1"
@onready var pathFollow_p2 = $"Path2D/PathFollow2D-P2"
var casilleroActual: int = 0 
var casilleroAnterior: int = 0
var turnoP1: bool = true
var turnoP2: bool = false
var turnosJugados: int = 0
var pathActivo 

const CASILLEROS = [ 
	"normal", "spotle", "framedEstrella", "harmonies", "spotle", "framed", "spotle", "harmonies", "framedEstrella", 
	"harmonies", "harmonies", "malo", "spotleEstrella", "malo", "malo", "framed", "spotle", "harmoniesEstrella", 
	"framed", "spotleEstrella", "framed", "harmonies", "malo", "spotleEstrella", "framed", "harmoniesEstrella", "spotle", 
	"harmonies", "framedEstrella", "spotle", "harmonies", "spotle", "framed", "framed" ]
const TAM_PXS = 32 
const TAM_CASILLERO = TAM_PXS * 3#pq por ahora ocupa 3 cuadrados cada casillerito

func _ready():
	turnoP1 = GestorJuego.turnoP1
	if !GestorJuego.ganoElJuego:
		turnoP1 = !turnoP1
		GestorJuego.turnoP1 = turnoP1
		GestorJuego.turnosRestantes = 3
	$dado.dado_tirado.connect(_on_dado_dado_tirado)
	casilleroActual = GestorJuego.posicionP1 if turnoP1 else GestorJuego.posicionP2
	pathFollow_p1.progress = GestorJuego.posicionP1 * TAM_CASILLERO
	pathFollow_p2.progress = GestorJuego.posicionP2 * TAM_CASILLERO

func _on_dado_dado_tirado(resultado: int):
	print("el dado sacó un: ", resultado)
	moverJugador(resultado)
	
func evaluarCasillero(tipo: String):
	if tipo == "malo":
		var rutas = ["res://scenes/spotle/spotle.tscn", "res://scenes/framed/framed.tscn" ]
		var minijuego = load(rutas.pick_random()).instantiate()
		minijuego.juegoTerminado.connect(_on_perdiste_malo)
		add_child(minijuego)
	elif "Estrella" in tipo:
		if tipo == "spotleEstrella":
			GestorJuego.intentosExtra = 3
			get_tree().change_scene_to_file("res://scenes/spotle/decidirSpotle.tscn")
	elif tipo == "spotle":
		get_tree().change_scene_to_file("res://scenes/spotle/decidirSpotle.tscn")
	elif tipo == "framed":
		get_tree().change_scene_to_file("res://scenes/framed/framed.tscn")
	elif tipo == "harmonies":
		get_tree().change_scene_to_file("res://scenes/harmonies/harmonies.tscn")
		
	GestorJuego.turnosRestantes -= 1
	if GestorJuego.turnosRestantes == 0:
		GestorJuego.turnoP1 = !turnoP1
		
func moverJugador(num: int):
	casilleroAnterior = casilleroActual
	casilleroActual = min(casilleroActual + num, 32)
	var distanciaPxs = num * (TAM_CASILLERO)
	
	if turnoP1:
		GestorJuego.posicionP1 = casilleroActual
	else:
		GestorJuego.posicionP2 = casilleroActual
	
	var pathActivo = pathFollow_p1 if turnoP1 else pathFollow_p2
	var destino = pathActivo.progress + distanciaPxs
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(pathActivo, "progress", destino, 1.5)
	await tween.finished
	
	var tipoCasillero = CASILLEROS[casilleroActual]
	evaluarCasillero(tipoCasillero)

func _on_perdiste_malo(gano: bool):
	if !gano:
		casilleroActual = casilleroAnterior
		var destino = casilleroActual * TAM_CASILLERO
		var pathActivo = pathFollow_p1 if turnoP1 else pathFollow_p2
		
		var tween = create_tween()
		tween.tween_property(pathActivo, "progress", destino, 1.0)
		
func _on_juego_terminado(gano: bool):
	if !gano:
		turnoP1 = !turnoP1
		GestorJuego.turnosRestantes = 3
