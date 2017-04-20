

Dado(/^que esteja autentificado como administrador$/) do
  visit ('https://enterprise-demo.orangehrmlive.com')
  fill_in 'txtUsername', :with => 'admin'
  fill_in 'txtPassword', :with => 'admin'
  click_button 'LOGIN'
end

Dado(/^clicar em Lista de funcionarios$/) do
  click_link 'PIM'
  click_link 'Employee List'
end

Quando(/^realizar a busca por ID de funcionario$/) do
  fill_in 'empsearch_id', :with => '0073'
  page.find(:id, 'searchBtn').click
end

Então(/^o funcionario deve aparecer na lista$/) do
  click_link '0073'
  page.find(:xpath, '//*[@id="btnSave"]').click
  fill_in 'personal_txtEmpFirstName', :with => 'Novo nome'
  page.find(:id, 'btnSave').click
end
