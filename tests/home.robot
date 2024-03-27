*** Settings ***

Resource    ../resources/base.robot

*** Test Cases ***

Deve abrir a tela principal

    Open Application    remote_url=http://127.0.0.1:4723
    ...    automationName=UiAutomator2    
    ...    platformName=Android      
    ...    deviceName=P10C1221015000474   
    ...    platformVersion=11.0.0   
    ...    app=${EXECDIR}/app/twp.apk   
    
    Wait Until Page Contains    Training Wheels Protocol    3
    Wait Until Page Contains    Mobile Version    3
    
    Close Application