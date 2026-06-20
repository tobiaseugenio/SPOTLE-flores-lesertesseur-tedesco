extends Resource
class_name Artistas

#nombre
#año debut
#miembros
#popularidad
#genero
#genero musical
#pais

enum Genero { MASCULINO, FEMENINO, MIXED }
enum GeneroMusical {ROCK, POP, HIP_HOP, COUNTRY, ALTERNATIVA, FOLK, RNB, LATIN, CLASICA, JAZZ, METAL, ELECTRONICA, REGGAE}

const LISTA_ARTISTAS= [
	{
		"nombre": "Travis Scott",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 9,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.HIP_HOP,
		"pais": "EEUU" 
	},
	
	{
		"nombre": "Charli XCX",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 166,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK" 
	}
]
