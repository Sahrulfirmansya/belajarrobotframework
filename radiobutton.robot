*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                                    ${openurl}      ${browsertype}
Test Teardown           Close Browser

***Variables***
${openurl}              https://demoqa.com/radio-button
${browsertype}          edge

***Test Cases***
I clicked yes button
    Maximize Browser Window
    Click Element                    //label[@for="yesRadio"]
    Element Should Be Visible        //p[@class="mt-3"]
    Element Text Should Be           //span[@class="text-success"]      Yes