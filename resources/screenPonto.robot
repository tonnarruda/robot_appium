*** Settings ***
Resource    resources/base.robot

*** Variables ***
${HISTORICO_LABEL}      id=br.com.fortes.appcolaborador.homolog:id/text_functionality
${MATRICULA_EPG}        id=br.com.fortes.appcolaborador.homolog:id/text_matricula

*** Keywords ***
Clica Historico Batida
    Wait Until Element Is Visible    ${HISTORICO_LABEL}
    Click Element                    ${HISTORICO_LABEL}