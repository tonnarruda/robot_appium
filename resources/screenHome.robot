*** Settings ***
Resource        resources/base.robot

*** Variables ***
${HOME_ICON}       xpath=(//android.widget.ImageView[@resource-id="br.com.fortes.appcolaborador.homolog:id/navigation_bar_item_icon_view"])[1]
${PONTO_ICON}      xpath=//android.widget.TextView[@resource-id="br.com.fortes.appcolaborador.homolog:id/navigation_bar_item_small_label_view" and @text="Ponto"]
${FOLHA_ICON}      xpath=//android.widget.TextView[@resource-id="br.com.fortes.appcolaborador.homolog:id/navigation_bar_item_small_label_view" and @text="Folha"]
${RH_ICON}         xpath=//android.widget.TextView[@resource-id="br.com.fortes.appcolaborador.homolog:id/navigation_bar_item_small_label_view" and @text="RH"]
${EMPRESA_NAME}    id=br.com.fortes.appcolaborador.homolog:id/tv_company
${EMPREGADO_NOME}    id=br.com.fortes.appcolaborador.homolog:id/text_name

*** Keywords ***
Click Home Icon   
    Wait Until Element Is Visible    ${HOME_ICON}
    Click Element                    ${HOME_ICON}

Click Ponto Icon   
    Wait Until Element Is Visible    ${PONTO_ICON}
    Click Element                    ${PONTO_ICON}

Click Folha Icon   
    Wait Until Element Is Visible    ${FOLHA_ICON}
    Click Element                    ${FOLHA_ICON}

Click RH Icon   
    Wait Until Element Is Visible    ${RH_ICON}
    Click Element                    ${RH_ICON}