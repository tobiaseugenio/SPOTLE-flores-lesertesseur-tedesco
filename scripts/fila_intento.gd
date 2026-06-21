extends GridContainer

@onready var cuadradoDebut = $cuadradoDebut/cuadrado
@onready var cuadradoPopularidad = $cuadradoPopu/cuadrado
@onready var cuadradoPais = $cuadradoCountry/cuadrado
@onready var cuadradoGender = $cuadradoGender/cuadrado
@onready var cuadradoGenre = $cuadradoGenre/cuadrado
@onready var cuadradoMiembros = $cuadradoMiembros/cuadrado


func compararDatos(artistaElegido: Dictionary, artistaSecreto: Dictionary):
	cuadradoDebut.configurar("Debut", artistaElegido["debut"], artistaSecreto["debut"])
	cuadradoPopularidad.configurar("Popularidad", artistaElegido["popularidad"], artistaSecreto["popularidad"])
	cuadradoPais.configurar("Pais", artistaElegido["pais"], artistaSecreto["pais"])
	cuadradoMiembros.configurar("Miembros", artistaElegido["miembros"], artistaSecreto["miembros"])
	cuadradoGender.configurar("Gender", artistaElegido["genero"], artistaSecreto["genero"])
	cuadradoGenre.configurar("Genre", artistaElegido["generoMusical"], artistaSecreto["generoMusical"])
