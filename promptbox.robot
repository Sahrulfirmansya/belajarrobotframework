*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser                                    ${openurl}      ${browsertype}
Test Teardown               Close Browser

***Variables***
${openurl}                  https://demoqa.com/alerts
${browsertype}              edge

***Test Cases***
i want to click prompt box to see alerts
    Maximize browser Window
    wait until Element is Visible       //*[@id="alertButton"]
    click Element                       //*[@id="alertButton"]
    Alert Should Be Present             You clicked a button