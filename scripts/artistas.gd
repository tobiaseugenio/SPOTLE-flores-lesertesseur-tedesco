extends Resource
class_name Artistas

#nombre
#año debut
#miembros
#popularidad
#genero
#genero musical
#pais

enum Genero { MALE, FEMALE, MIXED, NON_BI }
enum GeneroMusical {ROCK, POP, RAP, COUNTRY, ALTERNATIVA, FOLK, RNB, REGGAETON, CLASICA, JAZZ, METAL, ELECTRONICA, REGGAE}

const LISTA_ARTISTAS= [
	{
		"nombre": "Travis Scott",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 16,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU" 
	},
	{
		"nombre": "Charli XCX",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 225,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK" 
	},
	{
		"nombre": "Bad Bunny",
		"debut": 2016,
		"miembros": 1,
		"popularidad": 3,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Taylor Swift",
		"debut": 2006,
		"miembros": 1,
		"popularidad": 1,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "The Weeknd",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 4,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Canada"
	},
	{
		"nombre": "Drake",
		"debut": 2006,
		"miembros": 1,
		"popularidad": 2,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "Canada"
	},
	{
		"nombre": "Billie Eilish",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 7,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Kendrick Lamar",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 17,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Bruno Mars",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 13,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Ariana Grande",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 5,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Ed Sheeran",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 6,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Coldplay",
		"debut": 1996,
		"miembros": 4,
		"popularidad": 15,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Sabrina Carpenter",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 62,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Karol G",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 35,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "Eminem",
		"debut": 1996,
		"miembros": 1,
		"popularidad": 8,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Metallica",
		"debut": 1981,
		"miembros": 4,
		"popularidad": 87,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.METAL,
		"pais": "EEUU"
	},
	{
		"nombre": "Dua Lipa",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 18,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "J Balvin",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 19,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "SZA",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 42,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Radiohead",
		"debut": 1985,
		"miembros": 5,
		"popularidad": 108,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "UK"
	},
	{
		"nombre": "Queen",
		"debut": 1973,
		"miembros": 4,
		"popularidad": 40,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "The Beatles",
		"debut": 1963,
		"miembros": 4,
		"popularidad": 56,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "Michael Jackson",
		"debut": 1971,
		"miembros": 1,
		"popularidad": 65,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "ABBA",
		"debut": 1972,
		"miembros": 4,
		"popularidad": 167,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.POP,
		"pais": "Suecia"
	},
	{
		"nombre": "Fleetwood Mac",
		"debut": 1968,
		"miembros": 5,
		"popularidad": 104,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "Rihanna",
		"debut": 2005,
		"miembros": 1,
		"popularidad": 14,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "Barbados"
	},
	{
		"nombre": "Lady Gaga",
		"debut": 2008,
		"miembros": 1,
		"popularidad": 23,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Justin Bieber",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 11,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Canada"
	},
	{
		"nombre": "Beyoncé",
		"debut": 2003,
		"miembros": 1,
		"popularidad": 32,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Olivia Rodrigo",
		"debut": 2021,
		"miembros": 1,
		"popularidad": 49,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Lana Del Rey",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 21,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Kanye West",
		"debut": 2004,
		"miembros": 1,
		"popularidad": 9,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Post Malone",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 12,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Juice WRLD",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 22,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Shakira",
		"debut": 1991,
		"miembros": 1,
		"popularidad": 37,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Colombia"
	},
	{
		"nombre": "Peso Pluma",
		"debut": 2020,
		"miembros": 1,
		"popularidad": 41,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Mexico"
	},
	{
		"nombre": "Feid",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 55,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "Rauw Alejandro",
		"debut": 2017,
		"miembros": 1,
		"popularidad": 28,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Linkin Park",
		"debut": 1996,
		"miembros": 6,
		"popularidad": 30,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "Arctic Monkeys",
		"debut": 2006,
		"miembros": 4,
		"popularidad": 47,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "UK"
	},
	{
		"nombre": "Imagine Dragons",
		"debut": 2008,
		"miembros": 4,
		"popularidad": 20,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Red Hot Chili Peppers",
		"debut": 1984,
		"miembros": 4,
		"popularidad": 71,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "David Guetta",
		"debut": 2001,
		"miembros": 1,
		"popularidad": 24,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "Francia"
	},
	{
		"nombre": "BTS",
		"debut": 2013,
		"miembros": 7,
		"popularidad": 10,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Corea del Sur"
	},
	{
		"nombre": "Morgan Wallen",
		"debut": 2016,
		"miembros": 1,
		"popularidad": 53,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.COUNTRY,
		"pais": "EEUU"
	},
	{
		"nombre": "Katy Perry",
		"debut": 2001,
		"miembros": 1,
		"popularidad": 57,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Harry Styles",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 39,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Selena Gomez",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 72,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "The 1975",
		"debut": 2012,
		"miembros": 4,
		"popularidad": 246,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Tate McRae",
		"debut": 2019,
		"miembros": 1,
		"popularidad": 101,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Canada"
	},
	{
		"nombre": "Frank Ocean",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 78,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Usher",
		"debut": 1994,
		"miembros": 1,
		"popularidad": 171,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Mariah Carey",
		"debut": 1990,
		"miembros": 1,
		"popularidad": 168,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Tyler, the Creator",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 61,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "21 Savage",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 68,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "UK"
	},
	{
		"nombre": "Nicki Minaj",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 66,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "Trinidad y Tobago"
	},
	{
		"nombre": "Future",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 34,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Maluma",
		"debut": 2011,
		"miembros": 1,
		"popularidad": 69,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Colombia"
	},
	{
		"nombre": "Ozuna",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 25,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Anuel AA",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 36,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Myke Towers",
		"debut": 2016,
		"miembros": 1,
		"popularidad": 63,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Nirvana",
		"debut": 1987,
		"miembros": 3,
		"popularidad": 110,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "Tame Impala",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 143,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "Australia"
	},
	{
		"nombre": "Amy Winehouse",
		"debut": 2003,
		"miembros": 1,
		"popularidad": 359,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "UK"
	},
	{
		"nombre": "Gorillaz",
		"debut": 2001,
		"miembros": 4,
		"popularidad": 141,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "UK"
	},
	{
		"nombre": "Rosalía",
		"debut": 2017,
		"miembros": 1,
		"popularidad": 215,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "España"
	},
	{
		"nombre": "Doja Cat",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 54,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Cardi B",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 177,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Mitski",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 228,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Daddy Yankee",
		"debut": 1995,
		"miembros": 1,
		"popularidad": 50,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.REGGAETON,
		"pais": "Puerto Rico"
	},
	{
		"nombre": "Cigarettes After Sex",
		"debut": 2008,
		"miembros": 4,
		"popularidad": 156,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Ice Spice",
		"debut": 2021,
		"miembros": 1,
		"popularidad": 840,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Vampire Weekend",
		"debut": 2006,
		"miembros": 4,
		"popularidad": 260,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Natanael Cano",
		"debut": 2018,
		"miembros": 1,
		"popularidad": 84,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "Mexico"
	},
	{
		"nombre": "Bob Dylan",
		"debut": 1962,
		"miembros": 1,
		"popularidad": 501,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.FOLK,
		"pais": "EEUU"
	},
	{
		"nombre": "Green Day",
		"debut": 1990,
		"miembros": 3,
		"popularidad": 119,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "Stromae",
		"debut": 2009,
		"miembros": 1,
		"popularidad": 784,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "Belgica"
	},
	{
		"nombre": "Hozier",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 98,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "Irlanda"
	},
	{
		"nombre": "Aventura",
		"debut": 1994,
		"miembros": 4,
		"popularidad": 238,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Fuerza Regida",
		"debut": 2015,
		"miembros": 5,
		"popularidad": 59,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.FOLK,
		"pais": "Mexico"
	},
	{
		"nombre": "Camila Cabello",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 89,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Cuba"
	},
	{
		"nombre": "XXXTENTACION",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 26,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Maroon 5",
		"debut": 1994,
		"miembros": 5,
		"popularidad": 27,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Calvin Harris",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 29,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "UK"
	},
	{
		"nombre": "Khalid",
		"debut": 2016,
		"miembros": 1,
		"popularidad": 33,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "Shawn Mendes",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 38,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Canada"
	},
	{
		"nombre": "One Direction",
		"debut": 2010,
		"miembros": 5,
		"popularidad": 43,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Sam Smith",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 44,
		"genero": Genero.NON_BI,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Adele",
		"debut": 2008,
		"miembros": 1,
		"popularidad": 45,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "Metro Boomin",
		"debut": 2012,
		"miembros": 1,
		"popularidad": 46,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Chris Brown",
		"debut": 2005,
		"miembros": 1,
		"popularidad": 51,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RNB,
		"pais": "EEUU"
	},
	{
		"nombre": "J. Cole",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 52,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Sia",
		"debut": 2000,
		"miembros": 1,
		"popularidad": 60,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Australia"
	},
	{
		"nombre": "The Chainsmokers",
		"debut": 2012,
		"miembros": 2,
		"popularidad": 64,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "EEUU"
	},
	{
		"nombre": "Lil Uzi Vert",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 67,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Twenty One Pilots",
		"debut": 2009,
		"miembros": 2,
		"popularidad": 70,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Miley Cyrus",
		"debut": 2007,
		"miembros": 1,
		"popularidad": 73,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Halsey",
		"debut": 2014,
		"miembros": 1,
		"popularidad": 75,
		"genero": Genero.NON_BI,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "OneRepublic",
		"debut": 2002,
		"miembros": 5,
		"popularidad": 76,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Avicii",
		"debut": 2008,
		"miembros": 1,
		"popularidad": 77,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "Suecia"
	},
	{
		"nombre": "Zach Bryan",
		"debut": 2019,
		"miembros": 1,
		"popularidad": 80,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.COUNTRY,
		"pais": "EEUU"
	},
	{
		"nombre": "Lil Baby",
		"debut": 2017,
		"miembros": 1,
		"popularidad": 81,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "The Neighbourhood",
		"debut": 2011,
		"miembros": 5,
		"popularidad": 82,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Mac Miller",
		"debut": 2010,
		"miembros": 1,
		"popularidad": 85,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Lil Peep",
		"debut": 2015,
		"miembros": 1,
		"popularidad": 86,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ALTERNATIVA,
		"pais": "EEUU"
	},
	{
		"nombre": "Kygo",
		"debut": 2013,
		"miembros": 1,
		"popularidad": 88,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "Noruega"
	},
	{
		"nombre": "Elton John",
		"debut": 1969,
		"miembros": 1,
		"popularidad": 90,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "UK"
	},
	{
		"nombre": "AC/DC",
		"debut": 1973,
		"miembros": 5,
		"popularidad": 99,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "Australia"
	},
	{
		"nombre": "Daft Punk",
		"debut": 1994,
		"miembros": 2,
		"popularidad": 31,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ELECTRONICA,
		"pais": "Francia"
	},
	{
		"nombre": "Blackpink",
		"debut": 2016,
		"miembros": 4,
		"popularidad": 58,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "Corea del Sur"
	},
	{
		"nombre": "Lil Wayne",
		"debut": 1999,
		"miembros": 1,
		"popularidad": 74,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Fall Out Boy",
		"debut": 2003,
		"miembros": 4,
		"popularidad": 80,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "DaBaby",
		"debut": 2017,
		"miembros": 1,
		"popularidad": 91,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	{
		"nombre": "Black Eyed Peas",
		"debut": 1998,
		"miembros": 4,
		"popularidad": 92,
		"genero": Genero.MIXED,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Pitbull",
		"debut": 2004,
		"miembros": 1,
		"popularidad": 93,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "The Killers",
		"debut": 2003,
		"miembros": 4,
		"popularidad": 94,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "Bon Jovi",
		"debut": 1984,
		"miembros": 4,
		"popularidad": 95,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "Black Sabbath",
		"debut": 1970,
		"miembros": 4,
		"popularidad": 96,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.METAL,
		"pais": "UK"
	},
	{
		"nombre": "Journey",
		"debut": 1975,
		"miembros": 5,
		"popularidad": 97,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.ROCK,
		"pais": "EEUU"
	},
	{
		"nombre": "P!nk",
		"debut": 2000,
		"miembros": 1,
		"popularidad": 100,
		"genero": Genero.FEMALE,
		"generoMusical": GeneroMusical.POP,
		"pais": "EEUU"
	},
	{
		"nombre": "Playboi Carti",
		"debut": 2017,
		"miembros": 1,
		"popularidad": 79,
		"genero": Genero.MALE,
		"generoMusical": GeneroMusical.RAP,
		"pais": "EEUU"
	},
	]
