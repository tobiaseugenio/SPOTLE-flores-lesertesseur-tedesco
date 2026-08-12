extends Node

func evaluar(tipo: String, tablero: Node2D):
	if tipo == "malo":
		var rutas = ["res://scenes/spotle/spotle.tscn", "res://scenes/framed/framed.tscn", "res://scenes/harmonies.tscn" ]
		var minijuego = load(rutas.pick_random()).instantiate()
		minijuego.juegoTerminado.connect(tablero._on_perdiste_malo)
		
		var layer = CanvasLayer.new()
		tablero.add_child(layer)
		layer.add_child(minijuego)
		
	elif "Estrella" in tipo:
		if tipo == "spotleEstrella":
			GestorJuego.intentosExtra = 3
			get_tree().change_scene_to_file("res://scenes/spotle/decidirSpotle.tscn")
		if tipo == "framedEstrella":
			GestorJuego.intentosExtra = 1
			get_tree().change_scene_to_file("res://scenes/framed/menu.tscn")
		if tipo == "harmoniesEstrella":
			GestorJuego.intentosExtra = 1
			get_tree().change_scene_to_file("res://scenes/decidirHarmonies.tscn")
	elif tipo == "spotle":
		get_tree().change_scene_to_file("res://scenes/spotle/decidirSpotle.tscn")
	elif tipo == "framed":
		get_tree().change_scene_to_file("res://scenes/framed/menu.tscn")
	elif tipo == "harmonies":
		get_tree().change_scene_to_file("res://scenes/decidirHarmonies.tscn")
	elif tipo == "fin":
		get_tree().change_scene_to_file("res://scenes/ganasteFin.tscn")
		
	GestorJuego.turnosRestantes -= 1
