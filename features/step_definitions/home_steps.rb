$home_page = HomePage.new  
$busca_page = BuscaPage.new
$checkout_page = CheckoutPage.new  

Dado("que realizo uma busca de passagem na home") do
    $home_page.load
    $home_page.btn_close_modal.click
    $home_page.buscar_passagem
end

Dado("escolho a primeira opção da lista") do
    $busca_page.load
    $busca_page.comprar_passagem    
end

Quando("realizar a reserva na pagina de checkout") do
    $checkout_page.reservar_passagem
end

Entao("visualizo que minha reserva esta em processamento") do
    page.assert_text(text,'Reserva em processamento.')
end