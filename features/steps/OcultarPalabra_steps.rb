Given(/^me encuentro en la pagina de jugar$/) do
  visit '/jugar'
end

Given(/^la palabra secreta es "(.*?)"$/) do |palabra|
  @palabra=palabra
end


Then(/^deberia ver "(.*?)"$/) do |oculto|
  last_response.body.should include #{oculto}
end