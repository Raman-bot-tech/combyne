*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

${email}    abc@gmail.com
${password}     1111


*** Test Cases ***
LoginTest7

    open browser    ${url}      ${browser}
    maximize browser window
    Inputdata

    sleep   1sec
    page should contain     Either a phone number or email is required.

    sleep   2sec
    close browser



*** Keywords ***
Inputdata

    click element    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[5]/input[1]

#To run test from cmd use the command below
#robot TestCases\TC8.robot