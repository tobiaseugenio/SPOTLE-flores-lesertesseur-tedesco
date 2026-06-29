extends Control

@onready var titulo = $titulo
@onready var seccionMusica = $seccionMusica
@onready var seccionPelis = $seccionPelis
@onready var btnEmpezar = $btnEmpezar
var jugadorEligiendo = 1

func _ready():
	btnEmpezar.hide()
	seccionPelis.hide()
	
	var todosLosBotones = seccionMusica.get_children() + seccionPelis.get_children()
	for boton in todosLosBotones:
		if boton is TextureButton:
			# bind(boton) para q se envíe a sí mismo
			boton.pressed.connect(seleccionarAvatar.bind(boton))
			
	
func _on_btn_musica_pressed():
	seccionMusica.show()
	seccionPelis.hide()
	
func _on_btn_pelis_pressed():
	seccionPelis.show()
	seccionMusica.hide()
	
func seleccionarAvatar(botonPulsado: TextureButton):
	var rutaTextura = botonPulsado.texture_normal.resource_path
	var rutaChica = rutaTextura.replace("G.png", ".png")
	
	if jugadorEligiendo == 1:
		GestorJuego.texturaP1 = rutaChica
		botonPulsado.disabled = true
		titulo.text = "Jugador 2: Elija su avatar"
		jugadorEligiendo = 2
	else:
		GestorJuego.texturaP2 = rutaChica
		botonPulsado.disabled = true
		titulo.text = "Listo! Estan listos para empezar?"
		btnEmpezar.show()
		
func _on_btn_empezar_pressed():
	get_tree().change_scene_to_file("res://scenes/tablero.tscn")
