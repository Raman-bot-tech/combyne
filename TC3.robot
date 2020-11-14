*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

*** Test Cases ***
CreateAccountButtonTest
    open browser    ${url}      ${browser}
    maximize browser window
    click element   xpath://span[contains(text(),'Create an Account')]
    ${FirstName_txt}    set variable    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
    ${LastName_txt}     set variable    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
    ${Email_txt}        set variable    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[3]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
    page should contain     Let's Get Started!
    element should be visible       ${FirstName_txt}
    element should be enabled       ${FirstName_txt}
    element should be visible     ${LastName_txt}
    element should be enabled     ${LastName_txt}
    element should be visible     ${Email_txt}
    element should be enabled     ${Email_txt}
    sleep   2sec
    close browser



*** Keywords ***


#To run test from cmd use the command below
#robot TestCases\TC3.robot