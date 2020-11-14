# This test is to verify the failure using valid email, wrong password with error message.

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
    page should contain     Whoops! That email is not associated with an account.

    sleep   2sec
    close browser



*** Keywords ***
Inputdata
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/fieldset[1]/div[1]/input[1]    ${email}
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]     ${password}
    click element    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[5]/input[1]

#To run test from cmd use the command below
#robot TestCases\TC7.robot