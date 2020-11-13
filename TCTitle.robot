*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.combyne.ag/login

*** Test Cases ***
LoginTest5

    open browser    ${url}      ${browser}
    maximize browser window
    title should be     Combyne
    ${"email_text}  set variable    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
    element should be visible   ${"email_text}
    element should be enabled   ${"email_text}

    ${password_text}    set variable    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
    element should be visible   ${password_text}
    element should be enabled   ${password_text}

    click element    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[5]/input[1]


    sleep   3sec
    close browser



*** Keywords ***


#To run test from cmd use the command below
#robot TestCases\TCTitle.robot