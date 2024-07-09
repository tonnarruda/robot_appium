*** Settings ***
Resource    ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Login com sucesso
    Wait Until Element Is Visible    ${CPF}
    AppiumLibrary.Input Text         ${CPF}        76963355452
    Wait Until Element Is Visible    ${PASSWORD}
    AppiumLibrary.Input Text         ${PASSWORD}    12345678
    AppiumLibrary.Click Element      ${BTN_ENTRAR}
    Wait Until Element Is Visible    id=android:id/message
    Click Text                       OK
    Wait Until Element Is Visible    id=android:id/button1
    Click Text                       USE THIS FOLDER
    Wait Until Element Is Visible    id=android:id/button1
    Click Text                       ALLOW
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/tv_company
    Element Text Should Be           id=br.com.fortes.appcolaborador.homolog:id/tv_company    PERSI D 10821992

Login sem sucesso
    Wait Until Element Is Visible    ${CPF}
    AppiumLibrary.Input Text         ${CPF}        12345678900
    Element Text Should Be           id=br.com.fortes.appcolaborador.homolog:id/tv_cpf_error    CPF inválido

Login com CPF Demonstracao
    Wait Until Element Is Visible    ${CPF}
    AppiumLibrary.Input Text         ${CPF}        56500384245
    Element Text Should Be           id=br.com.fortes.appcolaborador.homolog:id/tv_cpf_error    CPF inválido
