# This test is to verify the Contact us link.

*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

*** Test Cases ***
CreateAccountButtonTest
    open browser    ${url}      ${browser}
    maximize browser window
    click element   xpath://a[contains(text(),'Contact Us')]

    #wait until page contains     mailto:help@combyne.ag

    sleep   2sec
    close browser



*** Keywords ***


#To run test from cmd use the command below
#robot TestCases\TC4.robot