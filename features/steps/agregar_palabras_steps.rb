Given(/^que estoy en la pagina para agregar_palabra$/) do
  visit '/'
  click_button('Jugar')
  #redirect ganador
  visit '/ganador'
  click_button('Agregar_Palabra')
  #visit '/agregar_palabras'
end

Given(/^hay palabra "(.*?)"$/) do |pala|
  last_response.body.should include {pala}
end


Given(/^Asigno a "(.*?)" el valor de "(.*?)"$/) do |palabra, valor|
   fill_in(palabra, :with => valor)
end


When(/^hago click en "(.*?)"$/) do |boton|
  click_button(boton)
end

