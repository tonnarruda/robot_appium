*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/screenLogin.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Login com sucesso
    Input CPF         76963355452
    Input Password    12345678
    Click Entrar
    Wait Until Element Is Visible    id=android:id/message
    Click Text                       OK
    Wait Until Element Is Visible    id=com.google.android.documentsui:id/option_menu_create_dir
    Click Element                    id=com.google.android.documentsui:id/option_menu_create_dir
    Wait Until Element Is Visible    id=android:id/text1
    Input Text                       id=android:id/text1        Colabore 
    Click Element                    id=android:id/button1
    Wait Until Element Is Visible    id=android:id/button1
    Click Text                       USE THIS FOLDER
    Wait Until Element Is Visible    id=android:id/button1
    Click Text                       ALLOW 
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/tv_company
    Element Text Should Be           id=br.com.fortes.appcolaborador.homolog:id/tv_company    PERSI D 10821992

Login sem sucesso
    Input CPF                 12345678900
    Valida Mensagem de Erro   CPF inválido

Login com CPF Demonstracao
    Input CPF                 56500384245
    Valida Mensagem de Erro   CPF inválido
