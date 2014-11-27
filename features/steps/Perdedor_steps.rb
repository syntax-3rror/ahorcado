Given(/^Dado que me encuentro en la pagina perdedor$/) do

 visit '/'
  click_button('Jugar')
  #redirect ganador
  visit '/perdedor'

end

When(/^tengo (\d+) errores$/) do |errores|
 
 last_response.body.should include #{errores}
end

Then(/^Deberia ver el mensaje "(.*?)" "(.*?)"$/) do |mensaje, palabra|
 
 visit"/perdedor"
 last_response.body.should include {mensaje} 
 last_response.body.should include {palabra}

end
