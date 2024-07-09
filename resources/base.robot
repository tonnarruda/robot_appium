*** Settings ***

Library        AppiumLibrary

*** Variables ***
${APK_PATH}    /Users/tonnarruda/workspace/ton/robot_appium/app/Colabore_v2.9.2_1_homolog.apk
${CPF}             id=br.com.fortes.appcolaborador.homolog:id/et_cpf
${PASSWORD}        id=br.com.fortes.appcolaborador.homolog:id/et_password
${BTN_ENTRAR}      id=br.com.fortes.appcolaborador.homolog:id/btn_sign_in

*** Keywords ***
Open Session
    Open Application    http://0.0.0.0:4723
    ...                 appium:automationName=UiAutomator2
    ...                 platformName=Android
    ...                 appium:deviceName=Emulator
    ...                 appium:app=${APK_PATH}
    ...                 appium:udid=emulator-5554
    ...                 appium:appPackage=br.com.fortes.appcolaborador.homolog
    ...                 appium:appActivity=br.com.fortes.appcolaborador.ui.SplashScreenActivity
    ...                 autoGrantPermissions=true     
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/btn_enter
    AppiumLibrary.Click Element      id=br.com.fortes.appcolaborador.homolog:id/btn_enter

 
Close Session
    Close Application

Login
    Open Session   
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