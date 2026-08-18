extends Node

@onready var verificadorEstadoBotones = $"../VerificadorEstadoBotones"
@onready var cargarPartida = $"../CargarPartida"
@onready var botonVerificar= $"../verificar"
@onready var opcionesElegidas = verificadorEstadoBotones.opcionesElegidas
@onready var categoriasActivas = cargarPartida.categoriasActivas

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	botonVerificar.pressed.connect(verificarCategoria)
	get_parent().get_node("ganasteCartel").hide()
	get_parent().get_node("perdisteCartel").hide()

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
	print("verificar categorias -> buscarCategoriaCorrecta()")
	var acierto = false
	for categoria in categoriasActivas:
		var opcionCategoriaActiva = categoria.opciones.duplicate()
		opcionCategoriaActiva.sort()
		
		if opcionCategoriaActiva == opcionesCorrectas:
			print("buscarCategoriaCorrecta -> bien")
			bloquearBotones()
			opcionesElegidas.clear()
			acierto = true
		
	if acierto:
		if botonesDesabilitados():
			GestorJuego.ganoElJuego = true
			get_parent().juegoTerminado.emit(true)
			var cartel = get_parent().get_node("ganasteCartel")
			cartel.scale = Vector2.ZERO
			cartel.show()
			var tween = create_tween()
			tween.set_trans(Tween.TRANS_BACK)
			tween.set_ease(Tween.EASE_OUT)
			tween.tween_property(cartel, "scale", Vector2.ONE, 0.25)
			await get_tree().create_timer(2.0).timeout
			get_tree().change_scene_to_file("res://scenes/tablero.tscn")
		return
		
	print("buscarCategoriaCorrecta -> mal")
	sacudirBotonVerificar()
	cargarPartida.intentosRestantes -= 1
	
	if cargarPartida.intentosRestantes == 0:
		$"../perdiste".play()
		GestorJuego.ganoElJuego = false
		get_parent().juegoTerminado.emit(false)
		var cartel = get_parent().get_node("perdisteCartel")
		cartel.scale = Vector2.ZERO
		cartel.show()
		var tween = create_tween()
		tween.set_trans(Tween.TRANS_BACK)
		tween.set_ease(Tween.EASE_OUT)
		tween.tween_property(cartel, "scale", Vector2.ONE, 0.25)
		await get_tree().create_timer(2.0).timeout
		get_tree().change_scene_to_file("res://scenes/tablero.tscn")

func sacudirBotonVerificar():
	var origen = botonVerificar.position
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_OUT)
	tween.tween_property(botonVerificar, "position", origen + Vector2(10, 0), 0.04)
	tween.tween_property(botonVerificar, "position", origen + Vector2(-10, 0), 0.04)
	tween.tween_property(botonVerificar, "position", origen + Vector2(7, 0), 0.03)
	tween.tween_property(botonVerificar, "position", origen + Vector2(-7, 0), 0.03)
	tween.tween_property(botonVerificar, "position", origen, 0.03)
	
func bloquearBotones():
	for boton in opcionesElegidas:
		boton.disabled = true
		
func botonesDesabilitados() -> bool:
	for boton in cargarPartida.botones:
		if boton is Button and not boton.disabled:
			return false
	return true
