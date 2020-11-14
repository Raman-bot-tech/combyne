*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

*** Test Cases ***
LoginTest

    open browser    ${url}      ${browser}
    maximize browser window
    Inputdata
    sleep   3sec
    close browser



*** Keywords ***
Inputdata
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/fieldset[1]/div[1]/input[1]    abc@gmail.com
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]     123456
    click element    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[5]/input[1]

#To run test from cmd use the command below
#robot TestCases\TC1.robot