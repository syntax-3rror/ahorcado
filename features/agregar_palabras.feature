Feature: Se desea agregar palabra al diccionario
	Scenario: al jugador puede agregar una palabra
		Given que estoy en la pagina para agregar_palabra
		And hay palabra "desea"
		And Asigno a "palabra" el valor de "tele"
		When  hago click en "agregar"
		Then deberia ver "tele"