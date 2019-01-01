*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/registration

*** Test Cases ***
TC_001_Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:jform[name]  TestingWorld
    #Select Radio Button  add_type  office
    #Select Checkbox  name:terms
    Input Text  xpath://input[@name='jform[email1]']  whuacho18@gmail.com
    Clear Element Text  name:jform[name]
    Click Link  xpath://a[@href='/login']
    Click Button  xpath://button[text()='Log in']
    Close Browser

