class HomePage < SitePrism::Page
    set_url "/"

    #modal
    element :btn_close_modal, '.btn-close-modal'

    #Formulario Pesquisa de Passagem
    element :rdBtn_ida, '#iptOneWay'
    element :destino, '#inptdestination'
    element :data_saida, '#lblDepartureDate'
    element :data_chegada, '#lblArrivalDate'
    element :sem_data, '#box-nodate'
    element :btnBuscar, '.btn-submit'

    #Calendario Data
    element :proximo_mes, ".pika-next"
    elements :calendario_dia, "div.calendar-days"

    #Metódo de Buscar passagem
    def buscar_passagem
        destino.set "Salvador"
        sleep 2
        destino.send_keys :tab
        #data_saida.click
        #calendario_dia[20].click
        #data_chegada.click
        #proximo_mes.click
        #calendario_dia[20].click
        btnBuscar.click
    end

end
