*** Settings ***
Resource    resources/base.robot

*** Variables ***
${CPF_FIELD}       id=br.com.fortes.appcolaborador.homolog:id/et_cpf
${PASSWORD}        id=br.com.fortes.appcolaborador.homolog:id/et_password
${BTN_ENTRAR}      id=br.com.fortes.appcolaborador.homolog:id/btn_sign_in
${ERROR_MESSAGE}   id=br.com.fortes.appcolaborador.homolog:id/tv_cpf_error

*** Keywords ***
Input CPF   
    [Arguments]    ${cpf}
    Wait Until Element Is Visible    ${CPF_FIELD}
    Input Text     ${CPF_FIELD}      ${cpf}

Input Password   
    [Arguments]    ${senha}
    Input Text     ${PASSWORD}       ${senha}

Click Entrar   
    Click Element    ${BTN_ENTRAR}

Valida Mensagem de Erro   
    [Arguments]    ${mensagem}
    Element Text Should Be       ${ERROR_MESSAGE}    ${mensagem}

Login Session   
    Open Session   
    Input CPF                        76963355452
    Input Password                   12345678
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