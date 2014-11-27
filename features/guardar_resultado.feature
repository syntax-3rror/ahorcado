Feature: mostrar resultado
	Scenario: El jugador gano
		
		Given me encuentro en la pagina ganador
		
		Then  debo poder ver "Felicidades usted gano"
		And debe mostrar "Gano con"
		