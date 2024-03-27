*** Settings ***    

Resource    ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session

*** Variables ***

${SPINNER}=    id=io.qaninja.android.twp:id/spinnerJob
${SPINNER_VALIDATOR}=     xpath=//android.widget.Spinner[@resource-id="io.qaninja.android.twp:id/spinnerJob"]
${LIST_OPTIONS}=    class=android.widget.ListView

*** Test Cases ***

Deve selecionar o perfil QA no formulário de cadastro
    
    Go To Cadastro Form

    Choice Job    QA


Deve selecionar o perfil DevOps no formulário de cadastro
    
    Go To Cadastro Form

    Choice Job    DevOps

*** Keywords ***

Choice Job
    [Arguments]    ${target}    #como se fosse uma função que vc passa um argumento por parametro

    Click Element    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}
    Click Text    ${target}
    Element Text Should Be    ${SPINNER_VALIDATOR}//*[contains(@text, '${target}')]    ${target}


    

    