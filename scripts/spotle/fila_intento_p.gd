extends VBoxContainer

@onready var cuadradoAnio = $GridContainer/cuadradoAnio/cuadrado
@onready var cuadradoCalificacion = $GridContainer/cuadradoCalificacion/cuadrado
@onready var cuadradoEstudio = $GridContainer/cuadradoEstudio/cuadrado
@onready var cuadradoGeneros = $HBoxContainer2/cuadradoGeneros/cuadrado
@onready var cuadradoDirector = $HBoxContainer2/cuadradoDirector/cuadrado
@onready var labelNombre = $HBoxContainer/Label
@onready var labelClasificacion = $HBoxContainer/Label2

func compararDatos(peliculaElegida: Dictionary, peliculaSecreta: Dictionary):
	labelNombre.text = peliculaElegida["nombre"]
	
	var strClasifE = Peliculas.Clasificacion.keys()[peliculaElegida["clasificacion"]]
	labelClasificacion.text = "|  " + strClasifE
	
	if peliculaElegida["nombre"] == peliculaSecreta["nombre"]:
		peliculaSecreta = peliculaElegida
	
	cuadradoAnio.configurar("Año", peliculaElegida["anio_estreno"], peliculaSecreta["anio_estreno"])
	cuadradoCalificacion.configurar("Rating", peliculaElegida["calificacion"], peliculaSecreta["calificacion"])
	cuadradoEstudio.configurar("Estudio", peliculaElegida["estudio"], peliculaSecreta["estudio"])
	cuadradoDirector.configurar("Director", peliculaElegida["director"], peliculaSecreta["director"])
	
	var listaE = []
	var listaS = []
	for g in peliculaElegida["generos"]:
		listaE.append(Peliculas.GeneroCine.keys()[g].capitalize())
	for g in peliculaSecreta["generos"]:
		listaS.append(Peliculas.GeneroCine.keys()[g].capitalize())
	cuadradoGeneros.configurarGeneros(listaE, listaS)
