class BuscaPage < SitePrism::Page
    set_url "busca/passagens/voos#/SAO/SSA/RT/17-10-2019/07-11-2019/-/-/-/1/0/0/-/-/BRL/-"

    #modal
    element :btn_close_modal, '.social-login__btn-close'

    #Escolha da Passagem
    element :sem_bagagem, ".no-luggage"
    elements :btnComprar, '.content-price-recommendation__btn-buy'

    #Metódo de Login, espera um argumento para consultar o arquivo de massa

    def comprar_passagem
        btn_close_modal.click
        btnComprar.first.click
        sem_bagagem.click
    end

end
