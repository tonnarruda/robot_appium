*** Settings ***

Library        AppiumLibrary

*** Variables ***
${APK_PATH}        ${EXECDIR}/app/Colabore_v2.9.2_1_homolog.apk

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
    ...                 fullReset=true 
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/btn_enter
    AppiumLibrary.Click Element      id=br.com.fortes.appcolaborador.homolog:id/btn_enter

 
Close Session
    Close Application