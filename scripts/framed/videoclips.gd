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
		"res://fotos/videoclips/thriller/frame5.png",
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
	"artista": "Bruno Mars",
	"anio": 2014,
	"alternativas": ["uptown funk"],
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
	"artista": "MichaelJackson",
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
		"id": "smells_like_teen_spirit",
		"titulo": "Smells Like Teen Spirit",
		"artista": "Nirvana",
		"anio": 1991,
		"alternativas": ["smells like teen spirit", "teen spirit", "nirvana"],
		"frames": [
			"res://fotos/videoclips/smells_like_teen_spirit/frame1.png",
			"res://fotos/videoclips/smells_like_teen_spirit/frame2.png",
			"res://fotos/videoclips/smells_like_teen_spirit/frame3.png",
			"res://fotos/videoclips/smells_like_teen_spirit/frame4.png",
			"res://fotos/videoclips/smells_like_teen_spirit/frame5.png",
			"res://fotos/videoclips/smells_like_teen_spirit/frame6.png",
		]
	},
	{
		"id": "billie_jean",
		"titulo": "Billie Jean",
		"artista": "Michael Jackson",
		"anio": 1983,
		"alternativas": ["billie jean", "michael jackson billie jean"],
		"frames": [
			"res://fotos/videoclips/billie_jean/frame1.png",
			"res://fotos/videoclips/billie_jean/frame2.png",
			"res://fotos/videoclips/billie_jean/frame3.png",
			"res://fotos/videoclips/billie_jean/frame4.png",
			"res://fotos/videoclips/billie_jean/frame5.png",
			"res://fotos/videoclips/billie_jean/frame6.png",
		]
	},
	{
		"id": "like_a_prayer",
		"titulo": "Like a Prayer",
		"artista": "Madonna",
		"anio": 1989,
		"alternativas": ["like a prayer", "madonna like a prayer"],
		"frames": [
			"res://fotos/videoclips/like_a_prayer/frame1.png",
			"res://fotos/videoclips/like_a_prayer/frame2.png",
			"res://fotos/videoclips/like_a_prayer/frame3.png",
			"res://fotos/videoclips/like_a_prayer/frame4.png",
			"res://fotos/videoclclips/like_a_prayer/frame5.png",
			"res://fotos/videoclips/like_a_prayer/frame6.png",
		]
	},
	{
		"id": "november_rain",
		"titulo": "November Rain",
		"artista": "Guns N' Roses",
		"anio": 1992,
		"alternativas": ["november rain", "guns n roses november rain", "guns n' roses"],
		"frames": [
			"res://fotos/videoclips/november_rain/frame1.png",
			"res://fotos/videoclips/november_rain/frame2.png",
			"res://fotos/videoclips/november_rain/frame3.png",
			"res://fotos/videoclips/november_rain/frame4.png",
			"res://fotos/videoclips/november_rain/frame5.png",
			"res://fotos/videoclips/november_rain/frame6.png",
		]
	},
	{
	"id": "respect",
	"titulo": "Respect",
	"artista": "Aretha Franklin",
	"anio": 1967,
	"alternativas": ["respect", "aretha franklin respect", "aretha franklin"],
	"frames": [
		"res://fotos/videoclips/respect/frame1.png",
		"res://fotos/videoclips/respect/frame2.png",
		"res://fotos/videoclips/respect/frame3.png",
		"res://fotos/videoclips/respect/frame4.png",
		"res://fotos/videoclips/respect/frame5.png",
		"res://fotos/videoclips/respect/frame6.png",
	]
},
{
	"id": "dont_stop_me_now",
	"titulo": "Don't Stop Me Now",
	"artista": "Queen",
	"anio": 1979,
	"alternativas": ["dont stop me now", "don't stop me now", "queen dont stop me now"],
	"frames": [
		"res://fotos/videoclips/dont_stop_me_now/frame1.png",
		"res://fotos/videoclips/dont_stop_me_now/frame2.png",
		"res://fotos/videoclips/dont_stop_me_now/frame3.png",
		"res://fotos/videoclips/dont_stop_me_now/frame4.png",
		"res://fotos/videoclips/dont_stop_me_now/frame5.png",
		"res://fotos/videoclips/dont_stop_me_now/frame6.png",
	]
},
{
	"id": "sweet_child_o_mine",
	"titulo": "Sweet Child O' Mine",
	"artista": "Guns N' Roses",
	"anio": 1988,
	"alternativas": ["sweet child o mine", "sweet child o' mine", "guns n roses sweet child"],
	"frames": [
		"res://fotos/videoclips/sweet_child_o_mine/frame1.png",
		"res://fotos/videoclips/sweet_child_o_mine/frame2.png",
		"res://fotos/videoclips/sweet_child_o_mine/frame3.png",
		"res://fotos/videoclips/sweet_child_o_mine/frame4.png",
		"res://fotos/videoclips/sweet_child_o_mine/frame5.png",
		"res://fotos/videoclips/sweet_child_o_mine/frame6.png",
	]
},
{
	"id": "come_as_you_are",
	"titulo": "Come As You Are",
	"artista": "Nirvana",
	"anio": 1992,
	"alternativas": ["come as you are", "nirvana come as you are"],
	"frames": [
		"res://fotos/videoclips/come_as_you_are/frame1.png",
		"res://fotos/videoclips/come_as_you_are/frame2.png",
		"res://fotos/videoclips/come_as_you_are/frame3.png",
		"res://fotos/videoclips/come_as_you_are/frame4.png",
		"res://fotos/videoclips/come_as_you_are/frame5.png",
		"res://fotos/videoclips/come_as_you_are/frame6.png",
	]
},
{
	"id": "vogue",
	"titulo": "Vogue",
	"artista": "Madonna",
	"anio": 1990,
	"alternativas": ["vogue", "madonna vogue"],
	"frames": [
		"res://fotos/videoclips/vogue/frame1.png",
		"res://fotos/videoclips/vogue/frame2.png",
		"res://fotos/videoclips/vogue/frame3.png",
		"res://fotos/videoclips/vogue/frame4.png",
		"res://fotos/videoclips/vogue/frame5.png",
		"res://fotos/videoclips/vogue/frame6.png",
	]
},
{
	"id": "no_scrubs",
	"titulo": "No Scrubs",
	"artista": "TLC",
	"anio": 1999,
	"alternativas": ["no scrubs", "tlc no scrubs"],
	"frames": [
		"res://fotos/videoclips/no_scrubs/frame1.png",
		"res://fotos/videoclips/no_scrubs/frame2.png",
		"res://fotos/videoclips/no_scrubs/frame3.png",
		"res://fotos/videoclips/no_scrubs/frame4.png",
		"res://fotos/videoclips/no_scrubs/frame5.png",
		"res://fotos/videoclips/no_scrubs/frame6.png",
	]
},
{
	"id": "toxic",
	"titulo": "Toxic",
	"artista": "Britney Spears",
	"anio": 2004,
	"alternativas": ["toxic", "britney spears toxic"],
	"frames": [
		"res://fotos/videoclips/toxic/frame1.png",
		"res://fotos/videoclips/toxic/frame2.png",
		"res://fotos/videoclips/toxic/frame3.png",
		"res://fotos/videoclips/toxic/frame4.png",
		"res://fotos/videoclips/toxic/frame5.png",
		"res://fotos/videoclips/toxic/frame6.png",
	]
},
{
	"id": "crazy_in_love",
	"titulo": "Crazy in Love",
	"artista": "Beyoncé ft. Jay-Z",
	"anio": 2003,
	"alternativas": ["crazy in love", "beyonce crazy in love", "beyoncé crazy in love"],
	"frames": [
		"res://fotos/videoclips/crazy_in_love/frame1.png",
		"res://fotos/videoclips/crazy_in_love/frame2.png",
		"res://fotos/videoclips/crazy_in_love/frame3.png",
		"res://fotos/videoclips/crazy_in_love/frame4.png",
		"res://fotos/videoclips/crazy_in_love/frame5.png",
		"res://fotos/videoclips/crazy_in_love/frame6.png",
	]
},
{
	"id": "in_da_club",
	"titulo": "In Da Club",
	"artista": "50 Cent",
	"anio": 2003,
	"alternativas": ["in da club", "50 cent in da club", "50 cent"],
	"frames": [
		"res://fotos/videoclips/in_da_club/frame1.png",
		"res://fotos/videoclips/in_da_club/frame2.png",
		"res://fotos/videoclips/in_da_club/frame3.png",
		"res://fotos/videoclips/in_da_club/frame4.png",
		"res://fotos/videoclips/in_da_club/frame5.png",
		"res://fotos/videoclips/in_da_club/frame6.png",
	]
},
{
	"id": "lose_yourself",
	"titulo": "Lose Yourself",
	"artista": "Eminem",
	"anio": 2002,
	"alternativas": ["lose yourself", "eminem lose yourself", "eminem"],
	"frames": [
		"res://fotos/videoclips/lose_yourself/frame1.png",
		"res://fotos/videoclips/lose_yourself/frame2.png",
		"res://fotos/videoclips/lose_yourself/frame3.png",
		"res://fotos/videoclips/lose_yourself/frame4.png",
		"res://fotos/videoclips/lose_yourself/frame5.png",
		"res://fotos/videoclips/lose_yourself/frame6.png",
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
	"id": "somebody_that_i_used_to_know",
	"titulo": "Somebody That I Used to Know",
	"artista": "Gotye ft. Kimbra",
	"anio": 2011,
	"alternativas": ["somebody that i used to know", "gotye", "somebody i used to know"],
	"frames": [
		"res://fotos/videoclips/somebody_that_i_used_to_know/frame1.png",
		"res://fotos/videoclips/somebody_that_i_used_to_know/frame2.png",
		"res://fotos/videoclips/somebody_that_i_used_to_know/frame3.png",
		"res://fotos/videoclips/somebody_that_i_used_to_know/frame4.png",
		"res://fotos/videoclips/somebody_that_i_used_to_know/frame5.png",
		"res://fotos/videoclips/somebody_that_i_used_to_know/frame6.png",
	]
},
{
	"id": "call_me_maybe",
	"titulo": "Call Me Maybe",
	"artista": "Carly Rae Jepsen",
	"anio": 2012,
	"alternativas": ["call me maybe", "carly rae jepsen", "carly rae"],
	"frames": [
		"res://fotos/videoclips/call_me_maybe/frame1.png",
		"res://fotos/videoclips/call_me_maybe/frame2.png",
		"res://fotos/videoclips/call_me_maybe/frame3.png",
		"res://fotos/videoclips/call_me_maybe/frame4.png",
		"res://fotos/videoclips/call_me_maybe/frame5.png",
		"res://fotos/videoclips/call_me_maybe/frame6.png",
	]
},
{
	"id": "happy",
	"titulo": "Happy",
	"artista": "Pharrell Williams",
	"anio": 2013,
	"alternativas": ["happy", "pharrell williams happy", "pharrell"],
	"frames": [
		"res://fotos/videoclips/happy/frame1.png",
		"res://fotos/videoclips/happy/frame2.png",
		"res://fotos/videoclips/happy/frame3.png",
		"res://fotos/videoclips/happy/frame4.png",
		"res://fotos/videoclips/happy/frame5.png",
		"res://fotos/videoclips/happy/frame6.png",
	]
},
{
	"id": "blurred_lines",
	"titulo": "Blurred Lines",
	"artista": "Robin Thicke ft. T.I. & Pharrell",
	"anio": 2013,
	"alternativas": ["blurred lines", "robin thicke blurred lines", "robin thicke"],
	"frames": [
		"res://fotos/videoclips/blurred_lines/frame1.png",
		"res://fotos/videoclips/blurred_lines/frame2.png",
		"res://fotos/videoclips/blurred_lines/frame3.png",
		"res://fotos/videoclips/blurred_lines/frame4.png",
		"res://fotos/videoclips/blurred_lines/frame5.png",
		"res://fotos/videoclips/blurred_lines/frame6.png",
	]
},
{
	"id": "stay_with_me",
	"titulo": "Stay With Me",
	"artista": "Sam Smith",
	"anio": 2014,
	"alternativas": ["stay with me", "sam smith stay with me", "sam smith"],
	"frames": [
		"res://fotos/videoclips/stay_with_me/frame1.png",
		"res://fotos/videoclips/stay_with_me/frame2.png",
		"res://fotos/videoclips/stay_with_me/frame3.png",
		"res://fotos/videoclips/stay_with_me/frame4.png",
		"res://fotos/videoclips/stay_with_me/frame5.png",
		"res://fotos/videoclips/stay_with_me/frame6.png",
	]
},
{
	"id": "sorry",
	"titulo": "Sorry",
	"artista": "Justin Bieber",
	"anio": 2015,
	"alternativas": ["sorry", "justin bieber sorry", "bieber"],
	"frames": [
		"res://fotos/videoclips/sorry/frame1.png",
		"res://fotos/videoclips/sorry/frame2.png",
		"res://fotos/videoclips/sorry/frame3.png",
		"res://fotos/videoclips/sorry/frame4.png",
		"res://fotos/videoclips/sorry/frame5.png",
		"res://fotos/videoclips/sorry/frame6.png",
	]
},
{
	"id": "hotline_bling",
	"titulo": "Hotline Bling",
	"artista": "Drake",
	"anio": 2015,
	"alternativas": ["hotline bling", "drake hotline bling", "drake"],
	"frames": [
		"res://fotos/videoclips/hotline_bling/frame1.png",
		"res://fotos/videoclips/hotline_bling/frame2.png",
		"res://fotos/videoclips/hotline_bling/frame3.png",
		"res://fotos/videoclips/hotline_bling/frame4.png",
		"res://fotos/videoclips/hotline_bling/frame5.png",
		"res://fotos/videoclips/hotline_bling/frame6.png",
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
	"id": "god_s_plan",
	"titulo": "God's Plan",
	"artista": "Drake",
	"anio": 2018,
	"alternativas": ["gods plan", "god's plan", "drake gods plan"],
	"frames": [
		"res://fotos/videoclips/god_s_plan/frame1.png",
		"res://fotos/videoclips/god_s_plan/frame2.png",
		"res://fotos/videoclips/god_s_plan/frame3.png",
		"res://fotos/videoclips/god_s_plan/frame4.png",
		"res://fotos/videoclips/god_s_plan/frame5.png",
		"res://fotos/videoclips/god_s_plan/frame6.png",
	]
},
{
	"id": "rockstar",
	"titulo": "Rockstar",
	"artista": "Post Malone ft. 21 Savage",
	"anio": 2017,
	"alternativas": ["rockstar", "post malone rockstar", "post malone"],
	"frames": [
		"res://fotos/videoclips/rockstar/frame1.png",
		"res://fotos/videoclips/rockstar/frame2.png",
		"res://fotos/videoclips/rockstar/frame3.png",
		"res://fotos/videoclips/rockstar/frame4.png",
		"res://fotos/videoclips/rockstar/frame5.png",
		"res://fotos/videoclips/rockstar/frame6.png",
	]
},
{
	"id": "shallow",
	"titulo": "Shallow",
	"artista": "Lady Gaga & Bradley Cooper",
	"anio": 2018,
	"alternativas": ["shallow", "lady gaga shallow", "lady gaga bradley cooper"],
	"frames": [
		"res://fotos/videoclips/shallow/frame1.png",
		"res://fotos/videoclips/shallow/frame2.png",
		"res://fotos/videoclips/shallow/frame3.png",
		"res://fotos/videoclips/shallow/frame4.png",
		"res://fotos/videoclips/shallow/frame5.png",
		"res://fotos/videoclips/shallow/frame6.png",
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
{
	"id": "drivers_license",
	"titulo": "Drivers License",
	"artista": "Olivia Rodrigo",
	"anio": 2021,
	"alternativas": ["drivers license", "driver's license", "olivia rodrigo drivers license", "olivia rodrigo"],
	"frames": [
		"res://fotos/videoclips/drivers_license/frame1.png",
		"res://fotos/videoclips/drivers_license/frame2.png",
		"res://fotos/videoclips/drivers_license/frame3.png",
		"res://fotos/videoclips/drivers_license/frame4.png",
		"res://fotos/videoclips/drivers_license/frame5.png",
		"res://fotos/videoclips/drivers_license/frame6.png",
	]
},
{
	"id": "blinding_lights",
	"titulo": "Blinding Lights",
	"artista": "The Weeknd",
	"anio": 2019,
	"alternativas": ["blinding lights", "the weeknd blinding lights", "weeknd"],
	"frames": [
		"res://fotos/videoclips/blinding_lights/frame1.png",
		"res://fotos/videoclips/blinding_lights/frame2.png",
		"res://fotos/videoclips/blinding_lights/frame3.png",
		"res://fotos/videoclips/blinding_lights/frame4.png",
		"res://fotos/videoclips/blinding_lights/frame5.png",
		"res://fotos/videoclips/blinding_lights/frame6.png",
	]
},
{
	"id": "as_it_was",
	"titulo": "As It Was",
	"artista": "Harry Styles",
	"anio": 2022,
	"alternativas": ["as it was", "harry styles as it was", "harry styles"],
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
	"id": "flowers",
	"titulo": "Flowers",
	"artista": "Miley Cyrus",
	"anio": 2023,
	"alternativas": ["flowers", "miley cyrus flowers"],
	"frames": [
		"res://fotos/videoclips/flowers/frame1.png",
		"res://fotos/videoclips/flowers/frame2.png",
		"res://fotos/videoclips/flowers/frame3.png",
		"res://fotos/videoclips/flowers/frame4.png",
		"res://fotos/videoclips/flowers/frame5.png",
		"res://fotos/videoclips/flowers/frame6.png",
	]
},
{
	"id": "anti_hero",
	"titulo": "Anti-Hero",
	"artista": "Taylor Swift",
	"anio": 2022,
	"alternativas": ["anti hero", "anti-hero", "taylor swift anti hero", "taylor swift"],
	"frames": [
		"res://fotos/videoclips/anti_hero/frame1.png",
		"res://fotos/videoclips/anti_hero/frame2.png",
		"res://fotos/videoclips/anti_hero/frame3.png",
		"res://fotos/videoclips/anti_hero/frame4.png",
		"res://fotos/videoclips/anti_hero/frame5.png",
		"res://fotos/videoclips/anti_hero/frame6.png",
	]
},
{
	"id": "kill_bill",
	"titulo": "Kill Bill",
	"artista": "SZA",
	"anio": 2022,
	"alternativas": ["kill bill", "sza kill bill", "sza"],
	"frames": [
		"res://fotos/videoclips/kill_bill/frame1.png",
		"res://fotos/videoclips/kill_bill/frame2.png",
		"res://fotos/videoclips/kill_bill/frame3.png",
		"res://fotos/videoclips/kill_bill/frame4.png",
		"res://fotos/videoclips/kill_bill/frame5.png",
		"res://fotos/videoclips/kill_bill/frame6.png",
	]
},
]
