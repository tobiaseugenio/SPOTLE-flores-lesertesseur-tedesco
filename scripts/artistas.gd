extends Resource
class_name Artistas

#nombre
#año debut
#miembros
#popularidad
#genero
#genero musical
#pais

enum Genero { MASCULINO, FEMENINO, MIXTO, NO_BINARIO }
enum GeneroMusical {ROCK, POP, RAP, COUNTRY, ALTERNATIVA, FOLK, RNB, REGGAETON, CLASICA, JAZZ, METAL, ELECTRONICA, REGGAE}

const LISTA_ARTISTAS= [
	{
		"nombre": "Travis Scott",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 9,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
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
	},
	{
		"nombre": "Bad Bunny",
		"debut": 2016,
		"miembros": 1,
		"popularidad": 1,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Taylor Swift",
		"debut": 2006,
		"miembros": 1,
		"popularidad": 2,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "The Weeknd",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 3,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "Canada"
	},
	{
		"nombre": "Drake",
		"debut": 2006,
		"miembros": 1,
		"popularidad": 4,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
		"pais": "Canada"
	},
	{
		"nombre": "Billie Eilish",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 5,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Kendrick Lamar",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 6,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Bruno Mars",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 7,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Ariana Grande",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 8,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Ed Sheeran",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 10,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Coldplay",
		"debut": 1996,
		"miembros": 4,
		"popularidad": 15,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Sabrina Carpenter",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 18,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Karol G",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 22,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "Eminem",
		"debut": 1996,
		"miembros": 1,
		"popularidad": 25,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Metallica",
		"debut": 1981,
		"miembros": 4,
		"popularidad": 40,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.METAL,
		"pais": "EEUU"
	},
	{
		"nombre": "Dua Lipa",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 30,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "J Balvin",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 35,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "SZA",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 28,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Radiohead",
		"debut": 1985,
		"miembros": 5,
		"popularidad": 95,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "UK"
	},
	{
		"nombre": "Queen",
		"debut": 1973,
		"miembros": 4,
		"popularidad": 45,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "The Beatles",
		"debut": 1963,
		"miembros": 4,
		"popularidad": 55,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "Michael Jackson",
		"debut": 1971,
		"miembros": 1,
		"popularidad": 20,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "ABBA",
		"debut": 1972,
		"miembros": 4,
		"popularidad": 80,
		"genero": Genero.MIXTO,
		"generoMusical": GeneroMusical.POP,
		"pais": "Suecia"
	},
	{
		"nombre": "Fleetwood Mac",
		"debut": 1968,
		"miembros": 5,
		"popularidad": 120,
		"genero": Genero.MIXTO,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "Rihanna",
		"debut": 2005,
		"miembros": 1,
		"popularidad": 12,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.RNB,
		"pais": "Barbados"
	},
	{
		"nombre": "Lady Gaga",
		"debut": 2008,
		"miembros": 1,
		"popularidad": 16,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Justin Bieber",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 13,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "Canada"
	},
	{
		"nombre": "Beyoncé",
		"debut": 2003,
		"miembros": 1,
		"popularidad": 19,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Olivia Rodrigo",
		"debut": 2021,
		"miembros": 1,
		"popularidad": 33,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Lana Del Rey",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 38,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Kanye West",
		"debut": 2004,
		"miembros": 1,
		"popularidad": 17,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Post Malone",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 26,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Juice WRLD",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 42,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Shakira",
		"debut": 1991,
		"miembros": 1,
		"popularidad": 50,
		"genero": Genero.FEMENINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "Colombia"
	},
	{
		"nombre": "Peso Pluma",
		"debut": 2020,
		"miembros": 1,
		"popularidad": 11,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Mexico"
	},
	{
		"nombre": "Feid",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 60,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "Rauw Alejandro",
		"debut": 2017,
		"miembros": 1,
		"popularidad": 70,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Linkin Park",
		"debut": 1996,
		"miembros": 6,
		"popularidad": 48,
		"genero": Genero.MIXTO,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "Arctic Monkeys",
		"debut": 2006,
		"miembros": 4,
		"popularidad": 65,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "Imagine Dragons",
		"debut": 2008,
		"miembros": 4,
		"popularidad": 75,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Red Hot Chili Peppers",
		"debut": 1984,
		"miembros": 4,
		"popularidad": 110,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "David Guetta",
		"debut": 2001,
		"miembros": 1,
		"popularidad": 85,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "Francia"
	},
	{
		"nombre": "BTS",
		"debut": 2013,
		"miembros": 7,
		"popularidad": 32,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.POP,
		"pais": "Corea del Sur"
	},
	{
		"nombre": "Morgan Wallen",
		"debut": 2016,
		"miembros": 1,
		"popularidad": 21,
		"genero": Genero.MASCULINO,
		"generoMusical": GeneroMusical.COUNTRY,
		"pais": "EEUU"
	},
]
