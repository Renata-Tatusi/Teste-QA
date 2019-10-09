class CheckoutPage < SitePrism::Page
    set_url "shop/checkout"

    #modal
    element :btn_close_modal, '#btn-x'
    element :loader , ".loader-container"

    #Formulario Reserva de Passagem
    # Dados Passageiro
    element :email_conta, '#my-account_email'
    element :nome, '#nome_0'
    element :sobrenome, '#lastName_0'
    element :nascimento, '#birth_0'
    element :sexo, :xpath, "//*[@id='passengers_form']/div/div[5]/div/select"

    #Dados Cartao
    element :bandeira, '#flag_card'
    element :numero, '#number_card-0'
    element :mes, '#month-0'
    element :ano, '#year-0'
    element :nome_carto, '#name_card-0'
    element :cpf, '#cpf_card-0'
    element :cvv, '#codesecure_card-0'
    
    #endereco cartao
    element :cep, '#zipcode-0'
    element :numero_endereco, '#number_address-0'

    #Formulario Contato
    element :email_contato, '#contact_email'
    element :email_confirma_contato, '#contact_email_confirm'
    element :telefone_contato, '#contact_phonenumber_0'

    element :btnComprar, '#accept-checkout'

    #Confirmação Reserva
    element :confirma_reserva, '#accept-checkout'

    #Metódo de reservar passagem
    def reservar_passagem
        page.driver.browser.switch_to.window( page.driver.window_handles.last )
        sleep 5
        email_conta.set "renata_maeda@yahoo.com.br"
        nome.set "Renata"
        sobrenome.set "Maeda"
        nascimento.set "09/01/1940"
        sexo.select "Feminino"
        
        bandeira.select "Visa"
        bandeira.send_keys :tab
        sleep 2
        numero.set "4111111111111111"
        sleep 2
        mes.select "04"
        ano.select "2028"
        nome_carto.set "Renata"
        cvv.set "123"
        cpf.set "04832072099"

        cep.set "01304001"
        numero_endereco.click
        sleep 3
        numero_endereco.set "123"
        
        sleep 2
        email_contato.set "renata_maeda@yahoo.com.br"
        sleep 2
        email_confirma_contato.set "renata_maeda@yahoo.com.br"
        telefone_contato.set "1199999999"
        confirma_reserva.click
        telefone_contato.send_keys :enter
        sleep 8
    end

end
