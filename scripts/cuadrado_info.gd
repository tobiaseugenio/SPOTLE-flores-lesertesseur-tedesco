extends Panel

@onready var labelCategoria = $categoria
@onready var labelResultado = $resultado

const COLOR_VERDE = Color("3b823e")
const COLOR_AMARILLO = Color("bda12c")
const COLOR_GRIS = Color("303030")

func configurar(categoria: String, intento, correcto):
	labelCategoria.text = categoria.to_upper()
	var nuevoEstilo = get_theme_stylebox("panel").duplicate()
	
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
					nuevoEstilo.bg_color = COLOR_AMARILLO
				else:
					nuevoEstilo.bg_color = COLOR_GRIS
				if dif > 0: textoResultado += " ↑"
				else: textoResultado += " ↓"    
				
			"popularidad":
				var dif = int(intento) - int(correcto) 
				if abs(dif) <= 50:
					nuevoEstilo.bg_color = COLOR_AMARILLO
				else:
					nuevoEstilo.bg_color = COLOR_GRIS
					
				if int(correcto) < int(intento): 
					textoResultado += " ↑"
				else: 
					textoResultado += " ↓"
					
			"pais":
				var contJugador = Continentes.PAISES.get(str(intento), "Desconocido")
				var contCorrecto = Continentes.PAISES.get(str(correcto), "Desconocido")
				
				if contJugador == contCorrecto and contJugador != "Desconocido":
					nuevoEstilo.bg_color = COLOR_AMARILLO
				else:
					nuevoEstilo.bg_color = COLOR_GRIS
			"miembros":
				nuevoEstilo.bg_color = COLOR_GRIS
				if int(correcto) > int(intento):
					textoResultado += " ↑"
				elif int(correcto) < int(intento):
					textoResultado += " ↓"
			_:
				nuevoEstilo.bg_color = COLOR_GRIS
				
	labelResultado.text = textoResultado
	add_theme_stylebox_override("panel", nuevoEstilo)
