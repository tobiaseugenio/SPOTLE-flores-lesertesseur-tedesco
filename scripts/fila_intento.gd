extends VBoxContainer

@onready var cuadradoDebut = $GridContainer/cuadradoDebut/cuadrado
@onready var cuadradoPopularidad = $GridContainer/cuadradoPopu/cuadrado
@onready var cuadradoPais = $GridContainer/cuadradoCountry/cuadrado
@onready var cuadradoGender = $GridContainer/cuadradoGender/cuadrado
@onready var cuadradoGenre = $GridContainer/cuadradoGenre/cuadrado
@onready var cuadradoMiembros = $GridContainer/cuadradoMiembros/cuadrado
@onready var labelNombre = $HBoxContainer/Label

func compararDatos(artistaElegido: Dictionary, artistaSecreto: Dictionary):
	labelNombre.text = artistaElegido["nombre"]
	
	if artistaElegido["nombre"] == artistaSecreto["nombre"]:
		artistaSecreto = artistaElegido
		
	cuadradoDebut.configurar("Debut", artistaElegido["debut"], artistaSecreto["debut"])
	cuadradoPopularidad.configurar("Popularidad", artistaElegido["popularidad"], artistaSecreto["popularidad"])
	cuadradoPais.configurar("Pais", artistaElegido["pais"], artistaSecreto["pais"])
	cuadradoMiembros.configurar("Miembros", artistaElegido["miembros"], artistaSecreto["miembros"])
	
	#pasarlo a string para q no vuelva num d array
	var strGenderE = Artistas.Genero.keys()[artistaElegido["genero"]].capitalize()
	var strGenderS = Artistas.Genero.keys()[artistaSecreto["genero"]].capitalize()
	cuadradoGender.configurar("Gender", strGenderE, strGenderS)
	
	var strGenreE = Artistas.GeneroMusical.keys()[artistaElegido["generoMusical"]].capitalize()
	var strGenreS = Artistas.GeneroMusical.keys()[artistaSecreto["generoMusical"]].capitalize()
	cuadradoGenre.configurar("Genre", strGenreE, strGenreS)
