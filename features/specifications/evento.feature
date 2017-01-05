#language: pt
Funcionalidade: Evento

Como um grande churrasqueiro
Eu quero criar um evento de churrasco
De modo que eu possa me divertir :-)

Cenário: Acessar a página de criação de eventos
Dado que eu acessei a página inicial
Então eu devo ver o formulário de criação de evento

Cenário: Criar um evento
Dado que eu acessei a página inicial
Quando eu preencher o formulário com o senguintes dados:
  | Nome    | Data       | Descrição         | Horário limite de confirmação |
  | Churras | 12/12/2016 | Evento bem bacana | 17:00                         |
E clicar no botão "Criar evento"
Então eu devo ser redirecionado para a página do novo evento
E devo ver as informações do evento
