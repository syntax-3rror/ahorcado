Given(/^me encuentro en la pagina ganador$/) do
  visit '/'
  click_button('Jugar')
  #redirect ganador
  visit '/ganador'
end

Then(/^debo poder ver "(.*?)"$/) do |felicitar|
  last_response.body.should include {felicitar}
end

Then(/^debe mostrar "(.*?)"$/) do |result|
  last_response.body.should include {result}
end


When(/^hago click en boton "(.*?)"$/) do |boton|
  click_button(boton)
end
