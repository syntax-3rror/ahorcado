Given(/^me encuentro en la pagina ganador$/) do
  visit '/'
  click_button('Jugar')
  #redirect ganador
  #visit '/ganador'
end

Given(/^debo poder ver el resultado$/) do
  pending # express the regexp above with the code you wish you had
end
