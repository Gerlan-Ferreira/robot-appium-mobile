*** Settings ***    

Resource    ../resources/base.robot

Test Setup    Open Session
Test Teardown    Close Session

#Swipe By Percent

    #start_x - x-percent at which to start
    #start_y - y-percent at which to start
    #end_x - x-percent distance from start_x at which to stop
    #end_y - y-percent distance from start_y at which to stop
    #duration - (optional) time to take the swipe, in ms.

    #Y = 18.22 => horizontal
    #X = 88.88 => vertical

    #Y = 18.22 => horizontal
    #X = 47.22 = vertical

*** Variables ***
${BTN_REMOVE}=    id=io.qaninja.android.twp:id/btnRemove
${MSG_SUCCESS_REMOVE}=    id=io.qaninja.android.twp:id/snackbar_text    

*** Test Cases ***

Deve remover o Capitão América
    
    Go to Avenger List
    
    Swipe By Percent    88.88    18.22    47.22    18.22

    Wait Until Element Is Visible    ${BTN_REMOVE}
    Click Element    ${BTN_REMOVE}
    Wait Until Page Contains Element    ${MSG_SUCCESS_REMOVE}   
    Element Text Should Be    ${MSG_SUCCESS_REMOVE}    Item removido! (posição = 0)
