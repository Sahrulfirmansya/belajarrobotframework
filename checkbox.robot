*** Settings ***
Library                     SeleniumLibrary
Test Setup                  Open Browser                                    ${openurl}      ${browsertype}
Test Teardown               Close Browser

***Variables***
${openurl}                  https://demoqa.com/checkbox
${browsertype}              edge

***Test Cases***
I want to check in notes
    Maximize browser Window
    Click Element               //button[@title="Expand all"]
    Click Element               (//span[@class="rct-checkbox"])[3]
    Element Should Be Visible   //*[@id="result"]