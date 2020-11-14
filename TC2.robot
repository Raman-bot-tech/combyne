# This test is to verify the forgot link functionality on login page.

*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

*** Test Cases ***
ForgotLinkTest
    open browser    ${url}      ${browser}
    maximize browser window
    click element   xpath://div[contains(text(),'Forgot your password?')]
    page should contain     Trouble Logging in?

    sleep   3sec
    close browser



*** Keywords ***


#To run test from cmd use the command below
#robot TestCases\TC2.robot