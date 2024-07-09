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
    ...                 disableWindowAnimation=true
    Wait Until Element Is Visible    id=br.com.fortes.appcolaborador.homolog:id/btn_enter
    AppiumLibrary.Click Element      id=br.com.fortes.appcolaborador.homolog:id/btn_enter

 
Close Session
    Close Application

Accept Alerts
    Wait Until Element Is Visible    id=android:id/message
    Click Text                       OK
    Wait Until Element Is Visible    id=com.google.android.documentsui:id/option_menu_create_dir
    Click Text                       sdk_gphone64_arm64 
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Movies"]
    Click Text                       Movies 
    Click Text                       USE THIS FOLDER
    Wait Until Element Is Visible    id=android:id/button1
    Click Text                       ALLOW 
