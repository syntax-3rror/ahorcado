Feature: mostrar resultado
	Scenario: El jugador gano
		Given me encuentro en la pagina ganador
		Then  debo poder ver "Felicidades usted gano"
		And debe mostrar "Gano con"
	Scenario: El jugador desea volver a jugar
		Given me encuentro en la pagina ganador
		When hago click en boton "Jugar"
		Then debo poder ver "Bienvenido al Juego AHORCADO"
		