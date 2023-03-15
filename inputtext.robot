*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                                    ${openurl}      ${browsertype}
Test Teardown           Close Browser

***Variables***
${openurl}              http://uitestingplayground.com/textinput
${browsertype}          edge
${nameone}              Jenar K

***Test Cases***
I filled text box using My Name
    Maximize Browser Window
    Input Text              //input[@class="form-control"]                   ${nameone}
    Click Element           //button[@id="updatingButton"]
    Element Should Contain  //button[@id="updatingButton"]                   ${nameone}