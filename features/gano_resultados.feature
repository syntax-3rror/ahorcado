Feature: mostrar resultado
	Scenario: El jugador gano
		Given me encuentro en la pagina ganador
		Then  debo poder ver "Felicidades usted gano"
		And debe mostrar "Gano con"
	Scenario: El jugador desea volver a jugar
		Given me encuentro en la pagina ganador
		When hago click en boton "Jugar"
		Then debo poder ver "Bienvenido al Juego AHORCADO"
	Scenario: El jugador es premiado con poder agregar alguna palabra al diccionario
		Given me encuentro en la pagina ganador
		When hago click en boton "Agregar_Palabra"
		Then debo poder ver "Que palabra desea agregar"
		