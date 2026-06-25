extends Panel

@onready var labelCategoria = $categoria
@onready var labelResultado = $resultado

const COLOR_VERDE = Color("3b823e")
const COLOR_AMARILLO = Color("bda12c")
const COLOR_GRIS = Color("303030")
var nuevoEstilo: StyleBoxFlat

func _ready():
	nuevoEstilo = get_theme_stylebox("panel").duplicate()
	
func estuvoCerca() -> void:
	nuevoEstilo.bg_color = COLOR_AMARILLO

func incorrecto() -> void:
	nuevoEstilo.bg_color = COLOR_GRIS

func configurar(categoria: String, intento, correcto):
	labelCategoria.text = categoria.to_upper()
	
	# a string para comparar de forma + facil 
	var esCorrecto = (str(intento) == str(correcto))
	var textoResultado = str(intento)
	
	if esCorrecto:
		nuevoEstilo.bg_color = COLOR_VERDE
	else:
		match categoria.to_lower():
			"debut":
				var dif = int(correcto) - int(intento)
				if abs(dif) <= 5:
					estuvoCerca()
				else:
					incorrecto()
				if dif > 0: textoResultado += " ↑"
				else: textoResultado += " ↓"    
				
			"popularidad":
				var dif = int(intento) - int(correcto) 
				if abs(dif) <= 50:
					estuvoCerca()
				else:
					incorrecto()
					
				if int(correcto) < int(intento): 
					textoResultado += " ↑"
				else: 
					textoResultado += " ↓"
					
			"pais":
				var contJugador = Continentes.PAISES.get(str(intento), "Desconocido")
				var contCorrecto = Continentes.PAISES.get(str(correcto), "Desconocido")
				
				if contJugador == contCorrecto and contJugador != "Desconocido":
					estuvoCerca()
				else:
					incorrecto()
			"miembros":
				nuevoEstilo.bg_color = COLOR_GRIS
				if int(correcto) > int(intento):
					textoResultado += " ↑"
				elif int(correcto) < int(intento):
					textoResultado += " ↓"
			"año":
				var dif = int(correcto) - int(intento)
				if abs(dif) <= 5:
					estuvoCerca()
				else:
					incorrecto()
				if dif > 0: textoResultado += " ↑"
				else: textoResultado += " ↓"
			"rating":
				var dif = int(correcto) - int(intento)
				if abs(dif) <= 5:
					estuvoCerca()
				else:
					incorrecto()
				if dif > 0: textoResultado += " ↑"
				else: textoResultado += " ↓"
			_:
				nuevoEstilo.bg_color = COLOR_GRIS
				
	labelResultado.text = textoResultado
	add_theme_stylebox_override("panel", nuevoEstilo)
	
func configurarGeneros(generosIntento: Array, generosCorrectos: Array) -> void:
	labelCategoria.text = "GÉNEROS"
	for res in labelResultado.get_children():
		res.queue_free()
	
	for genero in generosIntento:
		var label = Label.new()
		label.text = genero
		if genero in generosCorrectos:
			label.add_theme_color_override("font_color", Color.WHITE)
		else:
			label.add_theme_color_override("font_color", Color.GRAY)
			
		label.add_theme_font_size_override("font_size", 22)
		label.add_theme_font_override("font", load("res://ui/fonts/Gotham-Bold.otf"))
		labelResultado.add_child(label)
	
	add_theme_stylebox_override("panel", nuevoEstilo)
