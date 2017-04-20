

Dado(/^esteja autenticado como adiministrador$/) do
  visit ('https://enterprise-demo.orangehrmlive.com')
  fill_in 'txtUsername', :with => 'admin'
  fill_in 'txtPassword', :with => 'admin'
  click_button 'LOGIN'
end

Quando(/^clicar em "([^"]*)"$/) do |addEmploye|
  click_link 'PIM'
  click_link addEmploye
end

Quando(/^preencher o campo nome "([^"]*)"$/) do |txtfirstName|

  @txtfirstName = txtfirstName
	fill_in 'firstName', :with => txtfirstName
end

Quando(/^preencho o campo middle name "([^"]*)"$/) do |txtmiddlename|
  @txtmiddlename = txtmiddlename
  fill_in 'middleName', :with => txtmiddlename
end

Quando(/^preencho o campo last name "([^"]*)"$/) do |txtlastname|
  @txtlastname = txtlastname
  fill_in 'lastName', :with => txtlastname
  #attach_file('photofile', 'C:\AgileTesters\Exercicios_Dojo\exercicio2\features\specs\files\Images\foto.jpg')
  

end

Quando(/^seleciono a locaçao "([^"]*)"$/) do |txtlocation|
  @txtlocation = txtlocation
	select txtlocation, from: 'location'

end

Quando(/^clico em Salvar$/) do
  find('input[type="button"]').click
  sleep 3
end

Então(/^o funcionario deve ser cadastrado com sucesso$/) do

  expect(find('div#profile-pic h1').text).to include @txtfirstName
	

end
