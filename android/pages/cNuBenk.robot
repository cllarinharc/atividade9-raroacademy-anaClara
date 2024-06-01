*** Settings ***
Resource    ../base.robot

*** Variables ***
# Elementos da tela inicial
${TelaInicial}              xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
${ButtonPerfil}             xpath=//android.widget.ScrollView/android.view.View[1]
${ButtonOultarSaldo}        xpath=//android.widget.ScrollView/android.widget.Button[1]
${ButtonDuvida}             xpath=//android.widget.ScrollView/android.widget.Button[2]
${ButtonIndicar}            xpath=//android.widget.ScrollView/android.widget.Button[3]

# Atalhos do menu carrossel
${ButtonConhecer}           xpath=//android.view.View[@content-desc="Quero conhecer"]
${ButtonPix}                xpath=//android.view.View[@content-desc="Pix"]
${ButtonPagar}              xpath=//android.view.View[@content-desc="Pagar"]
${ButtonIndicarAmigo}       xpath=//android.view.View[@content-desc="Conhecer"]
${ButtonTransferencia}      xpath=//android.view.View[@content-desc="Transferir"]
${ButtonDepositar}          xpath=//android.view.View[@content-desc="Depositar"]
${ButtonEmprestimo}         xpath=//android.view.View[@content-desc="Empréstimos"]
${ButtonCobrar}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${ButtonDoacao}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${ButtonAtalhos}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

# Carrosséis
${Carrossel01}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${Carrossel02}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${Carrossel03}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${Carrossel04}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${MenuCarrossel}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]
${MenuCarrosselSaldo}       xpath=//android.widget.HorizontalScrollView

# Telas do aplicativo
${TelaDeposito}             xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
${TelaIndicar}              xpath=//android.widget.ImageView[contains(@content-desc,"Resgate seus amigos da fila do banco")]
${Tela_Saldo}                xpath=//android.widget.ScrollView
${TelaEmprestimo}            xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]

# Histórico de transações
${Historico}                 xpath=//android.view.View[@content-desc="Histórico"]
${Pix}                       xpath=//android.view.View[contains(@content-desc,"Pix")]
${ButtonDepositar1}          xpath=//android.view.View[contains(@content-desc,"Boleto")]
${TedDepositar}              xpath=//android.view.View[contains(@content-desc,"TED/DOC")]

# Fatura e limite de cartão
${FaturaCartaoCredito}       xpath=//android.view.View[@content-desc="R$ 780,72"]
${LimiteCartao}              xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]

# Compras recentes no cartão
${PagCartao}                 xpath=//android.view.View[contains(@content-desc,"Pagamento recebido")]
${TrasferenciaEnvio}         xpath=//android.view.View[contains(@content-desc,"Transferência enviada")]
${SaldoDisponivel}           xpath=//android.view.View[@content-desc="Saldo disponível"]

# Botões de fatura do cartão
${PagarFaturaCartaoCredito}       xpath=//android.view.View[@content-desc="Pagar fatura"]
${ResumoFaturaCartaoCredito}      xpath=//android.view.View[@content-desc="Resumo de faturas"]
${AjustarFaturaCartaoCredito}     xpath=//android.view.View[@content-desc="Ajustar limites"]
${OnlineFaturaCartaoCredito}     xpath=//android.view.View[@content-desc="Cartão virtual"]
${BloquearFaturaCartaoCredito}    xpath=//android.view.View[@content-desc="Bloquear cartão"]
${IndicarFaturaCartaoCredito}     xpath=//android.view.View[@content-desc="Indicar amigos"]
${CarrosselCartao}                xpath=//android.widget.HorizontalScrollView


*** Keywords ***
# Verificar elementos da tela inicial
Verificar elementos da tela inicial
    [Documentation]    Verifica se todos os elementos da tela inicial estão visíveis e corretos
    Wait Until Element Is Visible    ${TelaInicial}    timeout=10s
    Element Should Be Visible        ${ButtonPerfil}
    Element Should Be Visible        ${ButtonOultarSaldo}
    Element Should Be Visible        ${ButtonDuvida}
    Element Should Be Visible        ${ButtonIndicar}

# Keywords para Atalhos do menu carrossel
Verificar atalhos do menu carrossel estão visíveis
    [Documentation]    Verifica se os atalhos do menu carrossel estão visíveis
    Element Should Be Visible    ${ButtonConhecer}
    Element Should Be Visible    ${ButtonPix}
    Element Should Be Visible    ${ButtonPagar}
    Element Should Be Visible    ${ButtonIndicarAmigo}
    Element Should Be Visible    ${ButtonTransferencia}
    Element Should Be Visible    ${ButtonDepositar}
    Element Should Be Visible    ${ButtonEmprestimo}
    Element Should Be Visible    ${ButtonCobrar}
    Element Should Be Visible    ${ButtonDoacao}
    Element Should Be Visible    ${ButtonAtalhos}

# Keywords para Carrosséis
Verificar carrosséis estão visíveis
    [Documentation]    Verifica se os botões do carrossel estão visíveis
    Element Should Be Visible    ${Carrossel01}
    Element Should Be Visible    ${Carrossel02}
    Element Should Be Visible    ${Carrossel03}
    Element Should Be Visible    ${Carrossel04}
    Element Should Be Visible    ${MenuCarrossel}
    Element Should Be Visible    ${MenuCarrosselSaldo}

# Keywords para Telas do aplicativo
Verificar telas do aplicativo
    [Documentation]    Verifica se as principais telas do aplicativo estão visíveis
    Element Should Be Visible    ${TelaDeposito}
    Element Should Be Visible    ${TelaIndicar}
    Element Should Be Visible    ${TelaSaldo}
    Element Should Be Visible    ${TelaEmprestimo}

# Keywords para Histórico de transações
Verificar histórico de transações
    [Documentation]    Verifica se os elementos do histórico de transações estão visíveis
    Element Should Be Visible    ${Historico}
    Element Should Be Visible    ${Pix}
    Element Should Be Visible    ${ButtonDepositar1}
    Element Should Be Visible    ${TedDepositar}

# Keywords para Fatura e limite de cartão
Verificar fatura e limite de cartão
    [Documentation]    Verifica se as informações de fatura e limite de cartão estão visíveis
    Element Should Be Visible    ${FaturaCartaoCredito}
    Element Should Be Visible    ${LimiteCartao}

# Keywords para Compras recentes no cartão
Verificar compras recentes no cartão
    [Documentation]    Verifica se as compras recentes no cartão estão visíveis
    Element Should Be Visible    ${PagCartao}
    Element Should Be Visible    ${TrasferenciaEnvio}
    Element Should Be Visible    ${SaldoDisponivel}

# Keywords para Botões de fatura do cartão
Verificar botões de fatura do cartão
    [Documentation]    Verifica se os botões de ações da fatura do cartão estão visíveis
    Element Should Be Visible    ${PagarFaturaCartaoCredito}
    Element Should Be Visible    ${ResumoFaturaCartaoCredito}
    Element Should Be Visible    ${AjustarFaturaCartaoCredito}
    Element Should Be Visible    ${OnlineFaturaCartaoCredito}
    Element Should Be Visible    ${BloquearFaturaCartaoCredito}
    Element Should Be Visible    ${IndicarFaturaCartaoCredito}
    Element Should Be Visible    ${CarrosselCartao}
