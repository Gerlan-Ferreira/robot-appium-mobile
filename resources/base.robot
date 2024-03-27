*** Settings ***

Library     AppiumLibrary
Resource    helpers.robot
Resource    env.robot

*** Keywords ***

Open Session

    Set Appium Timeout    5

    Open Application    remote_url=http://127.0.0.1:4723
    ...    automationName=UiAutomator2    
    ...    platformName=Android    
    #...    avd=Pixel2    
    ...    deviceName=P10C1221015000474   
    ...    platformVersion=11.0.0   
    ...    app=${EXECDIR}/app/twp.apk   

    Get Started

Close Session

    Capture Page Screenshot    
    Close Application

