extends Node

static func get_all() -> Array:
	return videoclips

const videoclips = [
{
	"id": "thriller",
	"titulo": "Thriller",
	"artista": "Michael Jackson",
	"anio": 1983,
	"alternativas": ["thriller", "michael jackson thriller"],
	"frames": [
		"res://fotos/videoclips/thriller/frame1.png",
		"res://fotos/videoclips/thriller/frame2.png",
		"res://fotos/videoclips/thriller/frame3.png",
		"res://fotos/videoclips/thriller/frame4.png",
		"res://fotos/videoclips/thriller/frame55.png",
		"res://fotos/videoclips/thriller/frame6.png",
	]
},
{
	"id": "bohemianrhapsody",
	"titulo": "Bohemian Rhapsody",
	"artista": "Queen",
	"anio": 1975,
	"alternativas": ["bohemian rhapsody", "queen", "bohemian rapsody"],
	"frames": [
		"res://fotos/videoclips/bohemianrhapsody/frame1.png",
		"res://fotos/videoclips/bohemianrhapsody/frame2.png",
		"res://fotos/videoclips/bohemianrhapsody/frame3.png",
		"res://fotos/videoclips/bohemianrhapsody/frame4.png",
		"res://fotos/videoclips/bohemianrhapsody/frame5.png",
		"res://fotos/videoclips/bohemianrhapsody/frame6.png",
	]
},
{
	"id": "uptownfunk",
	"titulo": "Uptown Funk",
	"artista": "Mark Ronson ft. Bruno Mars",
	"anio": 2014,
	"alternativas": ["uptown funk", "uptownfunk", "mark ronson", "bruno mars"],
	"frames": [
		"res://fotos/videoclips/uptownfunk/frame1.png",
		"res://fotos/videoclips/uptownfunk/frame2.png",
		"res://fotos/videoclips/uptownfunk/frame3.png",
		"res://fotos/videoclips/uptownfunk/frame4.png",
		"res://fotos/videoclips/uptownfunk/frame5.png",
		"res://fotos/videoclips/uptownfunk/frame6.png",
	]
},
{
	"id": "gangnamstyle",
	"titulo": "Gangnam Style",
	"artista": "PSY",
	"anio": 2012,
	"alternativas": ["gangnam stlye","gangam style","psy"],
	"frames": [
		"res://fotos/videoclips/gangnamstyle/frame1.png",
		"res://fotos/videoclips/gangnamstyle/frame2.png",
		"res://fotos/videoclips/gangnamstyle/frame3.png",
		"res://fotos/videoclips/gangnamstyle/frame4.png",
		"res://fotos/videoclips/gangnamstyle/frame5.png",
		"res://fotos/videoclips/gangnamstyle/frame6.png",
	]
},
{
	"id": "beatit",
	"titulo": "Beat It",
	"artista": "Michael Jackson",
	"anio": 1983,
	"alternativas": ["beat it"],
	"frames": [
		"res://fotos/videoclips/beatit/frame1.png",
		"res://fotos/videoclips/beatit/frame2.png",
		"res://fotos/videoclips/beatit/frame3.png",
		"res://fotos/videoclips/beatit/frame4.png",
		"res://fotos/videoclips/beatit/frame5.png",
		"res://fotos/videoclips/beatit/frame6.png",
	]
},
{
	"id": "numb",
	"titulo": "Numb",
	"artista": "Linkin Park",
	"anio": 2003,
	"alternativas": ["numb", "linkin park numb"],
	"frames": [
		"res://fotos/videoclips/numb/frame1.png",
		"res://fotos/videoclips/numb/frame2.png",
		"res://fotos/videoclips/numb/frame3.png",
		"res://fotos/videoclips/numb/frame4.png",
		"res://fotos/videoclips/numb/frame5.png",
		"res://fotos/videoclips/numb/frame6.png",
	]
},
{
	"id": "asitwas",
	"titulo": "As It Was",
	"artista": "Harry Styles",
	"anio": 2022,
	"alternativas": ["as it was", "asitwas", "harry styles as it was", "harry styles"],
	"frames": [
		"res://fotos/videoclips/asitwas/frame1.png",
		"res://fotos/videoclips/asitwas/frame2.png",
		"res://fotos/videoclips/asitwas/frame3.png",
		"res://fotos/videoclips/asitwas/frame4.png",
		"res://fotos/videoclips/asitwas/frame5.png",
		"res://fotos/videoclips/asitwas/frame6.png",
	]
},
{
	"id": "badguy",
	"titulo": "Bad Guy",
	"artista": "Billie Eilish",
	"anio": 2019,
	"alternativas": ["bad guy", "badguy", "billie eilish bad guy", "billie eilish"],
	"frames": [
		"res://fotos/videoclips/badguy/badguy1.png",
		"res://fotos/videoclips/badguy/badguy2.png",
		"res://fotos/videoclips/badguy/badguy3.png",
		"res://fotos/videoclips/badguy/badguy4.png",
		"res://fotos/videoclips/badguy/badguy5.png",
		"res://fotos/videoclips/badguy/badguy6.png",
	]
},
{
	"id": "bestsongever",
	"titulo": "Best Song Ever",
	"artista": "One Direction",
	"anio": 2013,
	"alternativas": ["best song ever", "bestsongever", "one direction best song ever", "one direction"],
	"frames": [
		"res://fotos/videoclips/bestsongever/bse1.png",
		"res://fotos/videoclips/bestsongever/bse2.png",
		"res://fotos/videoclips/bestsongever/bse3.png",
		"res://fotos/videoclips/bestsongever/bse4.png",
		"res://fotos/videoclips/bestsongever/bse5.png",
		"res://fotos/videoclips/bestsongever/bse6.png",
	]
},
{
	"id": "fancy",
	"titulo": "Fancy",
	"artista": "Iggy Azalea ft. Charli XCX",
	"anio": 2014,
	"alternativas": ["fancy", "iggy azalea fancy", "charli xcx"],
	"frames": [
		"res://fotos/videoclips/fancy/fancy1.png",
		"res://fotos/videoclips/fancy/fancy2.png",
		"res://fotos/videoclips/fancy/fancy3.png",
		"res://fotos/videoclips/fancy/fancy4.png",
		"res://fotos/videoclips/fancy/fancy5.png",
		"res://fotos/videoclips/fancy/fancy6.png",
	]
},
{
	"id": "lastfridaynight",
	"titulo": "Last Friday Night (T.G.I.F.)",
	"artista": "Katy Perry",
	"anio": 2011,
	"alternativas": ["last friday night", "tgif", "katy perry last friday night", "lastfridaynight"],
	"frames": [
		"res://fotos/videoclips/lastfridaynight/lfn1.png",
		"res://fotos/videoclips/lastfridaynight/lfn2.png",
		"res://fotos/videoclips/lastfridaynight/lfn3.png",
		"res://fotos/videoclips/lastfridaynight/lfn4.png",
		"res://fotos/videoclips/lastfridaynight/lfn5.png",
		"res://fotos/videoclips/lastfridaynight/lfn6.png",
	]
},
{
	"id": "lmfao",
	"titulo": "Party Rock Anthem",
	"artista": "LMFAO",
	"anio": 2011,
	"alternativas": ["party rock anthem", "lmfao", "party rock"],
	"frames": [
		"res://fotos/videoclips/lmfao/lmfao1.png",
		"res://fotos/videoclips/lmfao/lmfao2.png",
		"res://fotos/videoclips/lmfao/lmfao3.png",
		"res://fotos/videoclips/lmfao/lmfao4.png",
		"res://fotos/videoclips/lmfao/lmfao5.png",
		"res://fotos/videoclips/lmfao/lmfao6.png",
	]
},
{
	"id": "lwymmd",
	"titulo": "Look What You Made Me Do",
	"artista": "Taylor Swift",
	"anio": 2017,
	"alternativas": ["look what you made me do", "lwymmd", "taylor swift look what you made me do", "taylor swift"],
	"frames": [
		"res://fotos/videoclips/lwymmd/lwymmd1.png",
		"res://fotos/videoclips/lwymmd/lwymmd2.png",
		"res://fotos/videoclips/lwymmd/lwymmd3.png",
		"res://fotos/videoclips/lwymmd/lwymmd4.png",
		"res://fotos/videoclips/lwymmd/lwymmd5.png",
		"res://fotos/videoclips/lwymmd/lwymmd6.png",
	]
},
{
	"id": "humble",
	"titulo": "HUMBLE.",
	"artista": "Kendrick Lamar",
	"anio": 2017,
	"alternativas": ["humble", "kendrick lamar humble", "kendrick lamar"],
	"frames": [
		"res://fotos/videoclips/humble/frame1.png",
		"res://fotos/videoclips/humble/frame2.png",
		"res://fotos/videoclips/humble/frame3.png",
		"res://fotos/videoclips/humble/frame4.png",
		"res://fotos/videoclips/humble/frame5.png",
		"res://fotos/videoclips/humble/frame6.png",
	]
},
{
	"id": "thankyounext",
	"titulo": "thank u, next",
	"artista": "Ariana Grande",
	"anio": 2018,
	"alternativas": ["thank u next", "thank you next", "thankyounext", "ariana grande thank u next", "ariana grande"],
	"frames": [
		"res://fotos/videoclips/thankyounext/tyn1.png",
		"res://fotos/videoclips/thankyounext/tyn2.png",
		"res://fotos/videoclips/thankyounext/tyn3.png",
		"res://fotos/videoclips/thankyounext/tyn4.png",
		"res://fotos/videoclips/thankyounext/tyn5.png",
		"res://fotos/videoclips/thankyounext/tyn6.png",
	]
},
{
	"id": "tiwycf",
	"titulo": "This Is What You Came For",
	"artista": "Calvin Harris ft. Rihanna",
	"anio": 2016,
	"alternativas": ["this is what you came for", "tiwycf", "rihanna", "rihana", "calvin harris"],
	"frames": [
		"res://fotos/videoclips/tiwycf/tiwycf1.png",
		"res://fotos/videoclips/tiwycf/tiwycf2.png",
		"res://fotos/videoclips/tiwycf/tiwycf3.png",
		"res://fotos/videoclips/tiwycf/tiwycf4.png",
		"res://fotos/videoclips/tiwycf/tiwycf5.png",
		"res://fotos/videoclips/tiwycf/tiwycf6.png",
	]
},
{
	"id": "levitating",
	"titulo": "Levitating",
	"artista": "Dua Lipa",
	"anio": 2020,
	"alternativas": ["levitating", "dua lipa levitating", "dua lipa"],
	"frames": [
		"res://fotos/videoclips/levitating/frame1.png",
		"res://fotos/videoclips/levitating/frame2.png",
		"res://fotos/videoclips/levitating/frame3.png",
		"res://fotos/videoclips/levitating/frame4.png",
		"res://fotos/videoclips/levitating/frame5.png",
		"res://fotos/videoclips/levitating/frame6.png",
	]
},
]
