extends Node
class_name CategoriasHarmonies
 
const CATEGORIAS_HARMONIES=[
	{
		"nombre": "Canciones de The Beatles",
		"opciones": ["Yesterday", "Let It Be", "Come Together", "Here Comes The Sun"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Madonna",
		"opciones": ["Vogue", "Holiday", "Hung Up", "4 Minutes"],
		"categoria": "musica"
	},
	{
		"nombre": "Musica en formato fisico",
		"opciones": ["Vinilo", "Cassette", "CD", "8-Track"],
		"categoria": "musica"
	},
	{
		"nombre": "Like a ___",
		"opciones": ["Prayer", "Virgin", "G6", "Rolling Stone"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Pitbull",
		"opciones": ["Fireball", "Damn I Love Miami", "Hotel Room Service", "Timber"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Michael Jackson",
		"opciones": ["Thriller", "Beat It", "Billie Jean", "Smooth Criminal"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Queen",
		"opciones": ["Bohemian Rhapsody", "We Will Rock You", "Don't Stop Me Now", "Somebody to Love"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Coldplay",
		"opciones": ["Yellow", "The Scientist", "Viva la Vida", "Fix You"],
		"categoria": "musica"
	},
	{
		"nombre": "Decadas de la musica",
		"opciones": ["60s", "70s", "80s", "90s"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Eminem",
		"opciones": ["Lose Yourself", "Stan", "Without Me", "Slim Shady"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Lady Gaga",
		"opciones": ["Bad Romance", "Poker Face", "Just Dance", "Shallow"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Adele",
		"opciones": ["Rolling in the Deep", "Someone Like You", "Hello", "Easy On Me"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Beyonce",
		"opciones": ["Crazy in Love", "Halo", "Single Ladies", "Formation"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Taylor Swift",
		"opciones": ["Shake It Off", "Love Story", "Blank Space", "Anti-Hero"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Rihanna",
		"opciones": ["Umbrella", "We Found Love", "Diamonds", "Work"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Bruno Mars",
		"opciones": ["Just The Way You Are", "Grenade", "Uptown Funk", "That's What I Like"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Katy Perry",
		"opciones": ["Roar", "Firework", "Teenage Dream", "Dark Horse"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Ed Sheeran",
		"opciones": ["Shape of You", "Thinking Out Loud", "Photograph", "Perfect"],
		"categoria": "musica"
	},
	{
		"nombre": "Canciones de Ariana Grande",
		"opciones": ["Thank U Next", "7 Rings", "Break Free", "God Is a Woman"],
		"categoria": "musica"
	},
	{
		"nombre": "Generos musicales",
		"opciones": ["Pop", "Rock", "Jazz", "Hip-Hop"],
		"categoria": "musica"
	},
	{
		"nombre": "Peliculas de Martin Scorsese",
		"opciones": ["Goodfellas", "Taxi Driver", "The Departed", "The Wolf of Wall Street"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Christopher Nolan",
		"opciones": ["Inception", "The Dark Knight", "Interstellar", "Tenet"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Pixar",
		"opciones": ["Toy Story", "Finding Nemo", "Up", "Inside Out"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas ganadoras del Oscar a Mejor Pelicula",
		"opciones": ["Parasite", "The Shape of Water", "Moonlight", "Birdman"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de la saga de El Padrino",
		"opciones": ["El Padrino", "El Padrino II", "El Padrino III", "The Offer"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Tim Burton",
		"opciones": ["Edward Scissorhands", "Beetlejuice", "Batman", "Big Eyes"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Steven Spielberg",
		"opciones": ["Jaws", "E.T.", "Schindler's List", "Indiana Jones"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Marvel",
		"opciones": ["Iron Man", "Black Panther", "Avengers", "Spider-Man"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de terror clasicas",
		"opciones": ["Halloween", "A Nightmare on Elm Street", "The Shining", "Psycho"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de ciencia ficcion",
		"opciones": ["The Matrix", "Blade Runner", "2001: A Space Odyssey", "Alien"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de animacion de Disney",
		"opciones": ["The Lion King", "Beauty and the Beast", "Aladdin", "Mulan"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Quentin Tarantino",
		"opciones": ["Pulp Fiction", "Inglourious Basterds", "Kill Bill", "Django Unchained"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de James Bond",
		"opciones": ["GoldenEye", "Casino Royale", "Skyfall", "No Time to Die"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de los 80s",
		"opciones": ["Back to the Future", "The Breakfast Club", "Top Gun", "Ghostbusters"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas romanticas famosas",
		"opciones": ["Titanic", "Notting Hill", "Pretty Woman", "The Notebook"],
		"categoria": "peliculas"
	},
	{
		"nombre": "Peliculas de Wes Anderson",
		"opciones": ["The Grand Budapest Hotel", "Rushmore", "The Royal Tenenbaums", "Moonrise Kingdom"],
		"categoria": "peliculas"
	}
]
