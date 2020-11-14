# This test is to verify the successful login of the user. Needed actual credentials to complete this test case.


*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

${email}    abc@gmail.com
${password}     123456

*** Test Cases ***
LoginTest

    open browser    ${url}      ${browser}
    maximize browser window
    Inputdata
    sleep   3sec
    close browser



*** Keywords ***
Inputdata
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/fieldset[1]/div[1]/input[1]    ${email}
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]     ${password}
    click element    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[5]/input[1]

#To run test from cmd use the command below
#robot TestCases\TC1.robot