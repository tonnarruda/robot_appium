*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/screenLogin.robot

Test Setup        Login Session
Test Teardown     Close Session

*** Test Cases ***
Consultar Batidas de Ponto
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="br.com.fortes.appcolaborador.homolog:id/navigation_bar_item_small_label_view" and @text="Ponto"]
    Click Element                    xpath=//android.widget.TextView[@resource-id="br.com.fortes.appcolaborador.homolog:id/navigation_bar_item_small_label_view" and @text="Ponto"]
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/text_functionality
    Click Element                    id=br.com.fortes.appcolaborador.homolog:id/text_functionality
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/text_matricula
    Click Text                       mar.
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/tv_data_month
    ${data_month}=    Get Text       id=br.com.fortes.appcolaborador.homolog:id/tv_data_month
    Should Be Equal                  ${data_month}    Março - 2024
    ${data_batida}=    Get Text      xpath=//android.widget.TextView[@resource-id="br.com.fortes.appcolaborador.homolog:id/bh_tv_date" and @text="29/03/2024 (Sexta-feira)"]
    Should Be Equal                  ${data_batida}    29/03/2024 (Sexta-feira)