extends Node2D

signal juegoTerminado(gano: bool)

func _on_verificar_mouse_entered() -> void:
	$hover.play()

func _on_verificar_pressed() -> void:
	$aceptar.play()
