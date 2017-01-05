Dado(/^que eu acessei a página inicial$/) do
  visit '/'
end

Então(/^eu devo ver o formulário de criação de evento$/) do
  expect(page).to have_content('Crie seu evento aqui')
end

Quando(/^eu preencher o formulário com o senguintes dados:$/) do |table|
  fill_in 'Nome', with: table.hashes.first['Nome']
  fill_in 'Data', with: table.hashes.first['Data']
  fill_in 'Descrição', with: table.hashes.first['Descrição']
  fill_in 'Horário limite de confirmação', with: table.hashes.first['Horário limite de confirmação']
end

Quando(/^clicar no botão "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^eu devo ser redirecionado para a página do novo evento$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^devo ver as informações do evento na tela$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
