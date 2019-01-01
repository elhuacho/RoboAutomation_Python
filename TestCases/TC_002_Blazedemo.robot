*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.blazedemo.com/

*** Test Cases ***
TC_001_Blazedemo
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  1second
    #Select From List By Index  name:fromPort  2
    Choose Your Departure And Destination  San Diego  New York
    Choose Your Flight
    Purchase The Flight  Walter  Ps 2 Mz K18 Lt03 Sector II AAHH Angamos  Lima  Lima  6  American Express  22222222222  Lucia Perez
    Close Browser

*** Keywords ***
Choose Your Departure And Destination
    [Arguments]  ${fromPort}  ${toPort}
    Select From List By Value  name:fromPort  ${fromPort}
    Select From List By Label  name:toPort  ${toPort}
    Click Button  xpath://input[@value='Find Flights']

Choose Your Flight
    Click Button  xpath://tr[1]/td[1]/input

Purchase The Flight
    [Arguments]  ${name}  ${address}  ${city}  ${state}  ${zipcode}  ${cardtype}  ${creditcard}  ${namecard}
    Input Text  id:inputName  ${name}
    Input Text  id:address  ${address}
    Input Text  id:city  ${city}
    Input Text  id:state  ${state}
    Input Text  id:zipCode  ${zipCode}
    Select From List By Label  name:cardType  ${cardType}
    Input Text  id:creditCardNumber  ${creditcard}
    Input Text  id:nameOnCard  ${namecard}
    Select Checkbox  name:rememberMe
    Click Button  xpath://input[@value='Purchase Flight']
