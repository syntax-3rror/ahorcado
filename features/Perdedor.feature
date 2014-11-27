Feature:Perdedor
	Scenario: Se muestra el mensaje de que perdio y la palabra
		Given Dado que me encuentro en la pagina perdedor
		When tengo 3 errores
		Then Deberia ver el mensaje "usted perdio la palabra es" "palabra"

	Scenario: Se debe poder ver 
		Given Dado que me encuentro en la pagina perdedor 
		When tengo 3 errores
		Then Deberia ver el mensaje "usted perdio la palabra es" "palabra"