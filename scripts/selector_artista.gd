extends Node

const bdd = preload("res://scripts/artistas.gd")

func elegirArtista() -> Dictionary:
	var artista = bdd.LISTA_ARTISTAS.pick_random()
	return artista
