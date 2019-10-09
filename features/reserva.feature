# language: pt

Funcionalidade: Desafio Reserva de Passagem Viajanet
  Eu como candidata a QA da Viajanet  
  Quero realizar um fluxo de reserva automatizado

  @reserva
  Cenário: Reserva de Passagem Não Logado
    Dado que realizo uma busca de passagem na home
    E escolho a primeira opção da lista
    Quando realizar a reserva na pagina de checkout
    Entao visualizo que minha reserva esta em processamento