Given(/^me encuentro en la pagina jugar$/) do
 visit "/jugar"
 
end


When(/^la cantidad de errores es (\d+)$/) do |errores|
  @errores==errores

 last_response.body.should include #{errores}

end

