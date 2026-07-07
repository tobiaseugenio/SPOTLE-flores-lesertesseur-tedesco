extends Node

static func get_all() -> Array:
	return movies

const movies = [
	{
		"id": "matrix",
		"titulo": "The Matrix",
		"anio": 1999,
		"alternativas": ["matrix", "the matrix"],
		"frames": [
			"res://fotos/matrix/frame1.png",
			"res://fotos/matrix/frame2.png",
			"res://fotos/matrix/frame3.png",
			"res://fotos/matrix/frame4.png",
			"res://fotos/matrix/frame5.png",
			"res://fotos/matrix/frame6.png",
		]
	},
	{
		"id": "tangled",
		"titulo": "Tangled",
		"anio": 2010,
		"alternativas": ["tangled", "enredados", "rapunzel"],
		"frames": [
			"res://fotos/tangled/frame1.png",
			"res://fotos/tangled/frame2.png",
			"res://fotos/tangled/frame3.png",
			"res://fotos/tangled/frame4.png",
			"res://fotos/tangled/frame5.png",
			"res://fotos/tangled/frame6.png",
		]
	},
	{
		"id": "et",
		"titulo": "E.T. the Extra-Terrestrial",
		"anio": 1982,
		"alternativas": ["et", "e.t", "extraterrestre"],
		"frames": [
			"res://fotos/et/frame1.png",
			"res://fotos/et/frame2.png",
			"res://fotos/et/frame3.png",
			"res://fotos/et/frame4.png",
			"res://fotos/et/frame5.png",
			"res://fotos/et/frame6.png",
		]
	},
	{
		"id": "tiburon",
		"titulo": "Jaws",
		"anio": 1975,
		"alternativas": ["tiburon", "jaws"],
		"frames": [
			"res://fotos/tiburon/frame1.png",
			"res://fotos/tiburon/frame2.png",
			"res://fotos/tiburon/frame3.png",
			"res://fotos/tiburon/frame4.png",
			"res://fotos/tiburon/frame5.png",
			"res://fotos/tiburon/frame6.png",
		]
	},
	{
		"id": "el_padrino",
		"titulo": "The Godfather",
		"anio": 1972,
		"alternativas": ["el padrino", "the godfather", "padrino"],
		"frames": [
			"res://fotos/el_padrino/frame1.png",
			"res://fotos/el_padrino/frame2.png",
			"res://fotos/el_padrino/frame3.png",
			"res://fotos/el_padrino/fsssrame4.png",
			"res://fotos/el_padrino/frame5.png",
			"res://fotos/el_padrino/frame6.png",
		]
	},
	{
		"id": "titanic",
		"titulo": "Titanic",
		"anio": 1997,
		"alternativas": ["titanic"],
		"frames": [
			"res://fotos/titanic/frame1.png",
			"res://fotos/titanic/frame2.png",
			"res://fotos/titanic/frame3.png",
			"res://fotos/titanic/frame4.png",
			"res://fotos/titanic/frame5.png",
			"res://fotos/titanic/frame6.png",
		]
	},
	{
		"id": "pulp_fiction",
		"titulo": "Pulp Fiction",
		"anio": 1994,
		"alternativas": ["pulp fiction", "pulpfiction"],
		"frames": [
			"res://fotos/pulp_fiction/frame1.png",
			"res://fotos/pulp_fiction/frame2.png",
			"res://fotos/pulp_fiction/frame3.png",
			"res://fotos/pulp_fiction/frame4.png",
			"res://fotos/pulp_fiction/frame5.png",
			"res://fotos/pulp_fiction/frame6.png",
		]
	},
	{
		"id": "Elemental",
		"titulo": "Elemental",
		"anio": 2023,
		"alternativas": ["elemental","elementos"],
		"frames": [
			"res://fotos/elemental/frame1.png",
			"res://fotos/elemental/frame2.png",
			"res://fotos/elemental/frame3.png",
			"res://fotos/elemental/frame4.png",
			"res://fotos/elemental/frame5.png",
			"res://fotos/elemental/frame6.png",
		]
	},
	{
		"id": "legally_blonde",
		"titulo": "Legally Blonde",
		"anio": 2001,
		"alternativas": ["legally blonde", "legalmente rubia"],
		"frames": [
			"res://fotos/legally_blonde/frame1.jpeg",
			"res://fotos/legally_blonde/frame2.jpeg",
			"res://fotos/legally_blonde/frame3.jpeg",
			"res://fotos/legally_blonde/frame4.jpeg",
			"res://fotos/legally_blonde/frame5.jpeg",
			"res://fotos/legally_blonde/frame6.jpeg",
		]
	},
	{
		"id": "interstellar",
		"titulo": "Interstellar",
		"anio": 2014,
		"alternativas": ["interstellar", "interestelar"],
		"frames": [
			"res://fotos/interstellar/frame1.jpeg",
			"res://fotos/interstellar/frame2.jpeg",
			"res://fotos/interstellar/frame3.jpeg",
			"res://fotos/interstellar/frame4.jpeg",
			"res://fotos/interstellar/frame5.jpeg",
			"res://fotos/interstellar/frame6.jpeg",
		]
	},
	{
		"id": "her",
		"titulo": "Her",
		"anio": 2013,
		"alternativas": ["her", "ella"],
		"frames": [
			"res://fotos/her/frame1.jpeg",
			"res://fotos/her/frame2.jpeg",
			"res://fotos/her/frame3.jpeg",
			"res://fotos/her/frame4.jpeg",
			"res://fotos/her/frame5.jpeg",
			"res://fotos/her/frame6.jpeg",
		]
	},
	{
		"id": "inception",
		"titulo": "Inception",
		"anio": 2010,
		"alternativas": ["inception", "el origen"],
		"frames": [
			"res://fotos/inception/frame1.jpeg",
			"res://fotos/inception/frame2.jpeg",
			"res://fotos/inception/frame3.jpeg",
			"res://fotos/inception/frame4.jpeg",
			"res://fotos/inception/frame5.jpeg",
			"res://fotos/inception/frame6.jpeg",
		]
	},
	{
		"id": "gravity",
		"titulo": "Gravity",
		"anio": 2013,
		"alternativas": ["gravity", "gravedad"],
		"frames": [
			"res://fotos/gravity/frame1.jpeg",
			"res://fotos/gravity/frame2.jpeg",
			"res://fotos/gravity/frame3.jpeg",
			"res://fotos/gravity/frame4.jpeg",
			"res://fotos/gravity/frame5.jpeg",
			"res://fotos/gravity/frame6.jpeg",
		]
	},
	{
		"id": "forrest_gump",
		"titulo": "Forrest Gump",
		"anio": 1994,
		"alternativas": ["forrest gump", "forrestgump"],
		"frames": [
			"res://fotos/forrest_gump/frame1.jpeg",
			"res://fotos/forrest_gump/frame2.jpeg",
			"res://fotos/forrest_gump/frame3.jpeg",
			"res://fotos/forrest_gump/frame4.jpeg",
			"res://fotos/forrest_gump/frame5.jpeg",
			"res://fotos/forrest_gump/frame6.jpeg",
		]
	},
	{
		"id": "ferris_bueller",
		"titulo": "Ferris Bueller's Day Off",
		"anio": 1986,
		"alternativas": ["ferris bueller", "ferris buellers day off", "un dia libre de locura"],
		"frames": [
			"res://fotos/ferris_bueller/frame1.jpeg",
			"res://fotos/ferris_bueller/frame2.jpeg",
			"res://fotos/ferris_bueller/frame3.jpeg",
			"res://fotos/ferris_bueller/frame4.jpeg",
			"res://fotos/ferris_bueller/frame5.jpeg",
			"res://fotos/ferris_bueller/frame6.jpeg",
		]
	},
	{
		"id": "cumbres_borrascosas",
		"titulo": "Wuthering Heights",
		"anio": 2011,
		"alternativas": ["wuthering heights", "cumbres borrascosas"],
		"frames": [
			"res://fotos/cumbres_borrascosas/frame1.jpeg",
			"res://fotos/cumbres_borrascosas/frame2.jpeg",
			"res://fotos/cumbres_borrascosas/frame3.jpeg",
			"res://fotos/cumbres_borrascosas/frame4.jpeg",
			"res://fotos/cumbres_borrascosas/frame5.jpeg",
			"res://fotos/cumbres_borrascosas/frame6.jpeg",
		]
	},
	{
		"id": "joker_folie_a_deux",
		"titulo": "Joker: Folie à Deux",
		"anio": 2024,
		"alternativas": ["joker 2", "joker folie a deux", "joker folie à deux"],
		"frames": [
			"res://fotos/joker_folie_a_deux/frame1.jpeg",
			"res://fotos/joker_folie_a_deux/frame2.jpeg",
			"res://fotos/joker_folie_a_deux/frame3.jpeg",
			"res://fotos/joker_folie_a_deux/frame4.jpeg",
			"res://fotos/joker_folie_a_deux/frame5.jpeg",
			"res://fotos/joker_folie_a_deux/frame6.jpeg",
		]
	},
	{
		"id": "notting_hill",
		"titulo": "Notting Hill",
		"anio": 1999,
		"alternativas": ["notting hill"],
		"frames": [
			"res://fotos/notting_hill/frame1.jpeg",
			"res://fotos/notting_hill/frame2.jpeg",
			"res://fotos/notting_hill/frame3.jpeg",
			"res://fotos/notting_hill/frame4.jpeg",
			"res://fotos/notting_hill/frame5.jpeg",
			"res://fotos/notting_hill/frame6.jpeg",
		]
	},
	{
		"id": "paddington",
		"titulo": "Paddington",
		"anio": 2014,
		"alternativas": ["paddington"],
		"frames": [
			"res://fotos/paddington/frame1.jpeg",
			"res://fotos/paddington/frame2.jpeg",
			"res://fotos/paddington/frame3.jpeg",
			"res://fotos/paddington/frame4.jpeg",
			"res://fotos/paddington/frame5.jpeg",
			"res://fotos/paddington/frame6.jpeg",
		]
	},
	{
		"id": "parasite",
		"titulo": "Parasite",
		"anio": 2019,
		"alternativas": ["parasite", "parasito", "parasitos"],
		"frames": [
			"res://fotos/parasite/frame1.jpeg",
			"res://fotos/parasite/frame2.jpeg",
			"res://fotos/parasite/frame3.jpeg",
			"res://fotos/parasite/frame4.jpeg",
			"res://fotos/parasite/frame5.jpeg",
			"res://fotos/parasite/frame6.jpeg",
		]
	},
	{
		"id": "piratas_del_caribe_5",
		"titulo": "Pirates of the Caribbean: Dead Men Tell No Tales",
		"anio": 2017,
		"alternativas": ["pirates of the caribbean", "piratas del caribe", "piratas del caribe 5"],
		"frames": [
			"res://fotos/piratas_del_caribe_5/frame1.jpeg",
			"res://fotos/piratas_del_caribe_5/frame2.jpeg",
			"res://fotos/piratas_del_caribe_5/frame3.jpeg",
			"res://fotos/piratas_del_caribe_5/frame4.jpeg",
			"res://fotos/piratas_del_caribe_5/frame5.jpeg",
			"res://fotos/piratas_del_caribe_5/frame6.jpeg",
		]
	},
	{
		"id": "pokemon",
		"titulo": "Pokémon Detective Pikachu",
		"anio": 2019,
		"alternativas": ["pokemon", "detective pikachu", "pikachu"],
		"frames": [
			"res://fotos/pokemon/frame1.jpeg",
			"res://fotos/pokemon/frame2.jpeg",
			"res://fotos/pokemon/frame3.jpeg",
			"res://fotos/pokemon/frame4.jpeg",
			"res://fotos/pokemon/frame5.jpeg",
			"res://fotos/pokemon/frame6.jpeg",
		]
	},
	{
		"id": "romeo_y_julieta",
		"titulo": "Romeo + Juliet",
		"anio": 1996,
		"alternativas": ["romeo and juliet", "romeo y julieta", "romeo + juliet"],
		"frames": [
			"res://fotos/romeo_y_julieta/frame1.jpeg",
			"res://fotos/romeo_y_julieta/frame2.jpeg",
			"res://fotos/romeo_y_julieta/frame3.jpeg",
			"res://fotos/romeo_y_julieta/frame4.jpeg",
			"res://fotos/romeo_y_julieta/frame5.jpeg",
			"res://fotos/romeo_y_julieta/frame6.jpeg",
		]
	},
	{
		"id": "scarface",
		"titulo": "Scarface",
		"anio": 1983,
		"alternativas": ["scarface", "caracortada"],
		"frames": [
			"res://fotos/scarface/frame1.jpeg",
			"res://fotos/scarface/frame2.jpeg",
			"res://fotos/scarface/frame3.jpeg",
			"res://fotos/scarface/frame4.jpeg",
			"res://fotos/scarface/frame5.jpeg",
			"res://fotos/scarface/frame6.jpeg",
		]
	},
	{
		"id": "terminator_2",
		"titulo": "Terminator 2: Judgment Day",
		"anio": 1991,
		"alternativas": ["terminator 2", "terminator", "el dia del juicio final"],
		"frames": [
			"res://fotos/terminator_2/frame1.jpeg",
			"res://fotos/terminator_2/frame2.jpeg",
			"res://fotos/terminator_2/frame3.jpeg",
			"res://fotos/terminator_2/frame4.jpeg",
			"res://fotos/terminator_2/frame5.jpeg",
			"res://fotos/terminator_2/frame6.jpeg",
		]
	},
	{
		"id": "the_moment",
		"titulo": "The Moment",
		"anio": 2013,
		"alternativas": ["the moment", "el momento"],
		"frames": [
			"res://fotos/the_moment/frame1.jpeg",
			"res://fotos/the_moment/frame2.jpeg",
			"res://fotos/the_moment/frame3.jpeg",
			"res://fotos/the_moment/frame4.jpeg",
			"res://fotos/the_moment/frame5.jpeg",
			"res://fotos/the_moment/frame6.jpeg",
		]
	},
	{
		"id": "the_truman_show",
		"titulo": "The Truman Show",
		"anio": 1998,
		"alternativas": ["the truman show", "truman show", "el show de truman"],
		"frames": [
			"res://fotos/the_truman_show/frame1.jpeg",
			"res://fotos/the_truman_show/frame2.jpeg",
			"res://fotos/the_truman_show/frame3.jpeg",
			"res://fotos/the_truman_show/frame4.jpeg",
			"res://fotos/the_truman_show/frame5.jpeg",
			"res://fotos/the_truman_show/frame6.jpeg",
		]
	},
	{
		"id": "top_gun",
		"titulo": "Top Gun",
		"anio": 1986,
		"alternativas": ["top gun", "topgun"],
		"frames": [
			"res://fotos/top gun/frame1.jpeg",
			"res://fotos/top gun/frame2.jpeg",
			"res://fotos/top gun/frame3.jpeg",
			"res://fotos/top gun/frame4.jpeg",
			"res://fotos/top gun/frame5.jpeg",
			"res://fotos/top gun/frame6.jpeg",
		]
	},
]
