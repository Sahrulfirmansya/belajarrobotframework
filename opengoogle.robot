*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
I am access Google page in chrome
    Open Browser                        url=https://www.google.com/     browser=gc
    Maximize Browser Window
    Sleep                               3s
    Close Browser