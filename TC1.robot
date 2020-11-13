*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
LoginTest
    #create webdriver    chrome  executeable_path="C:\Users\rubyk\AppData\Local\Programs\Python\Python39\chromedriver.exe"
    open browser    https://demo.combyne.ag/login       chrome
    maximize browser window
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/div[1]/div[1]/fieldset[1]/div[1]/input[1]    abc@gmail.com
    input text  xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]     123456
    click element    xpath://body/div[@id='ui']/div[1]/div[1]/form[1]/div[1]/div[5]/input[1]
    sleep   3sec
    close browser



*** Keywords ***
#robot TestCases\TC1.robot