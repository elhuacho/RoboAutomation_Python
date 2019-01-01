*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC_005 Validate Login and Logout
    ${speed}=  get selenium speed
    log to console  ${speed}
    open browser  https://accounts.google.com/ServiceLogin/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail&passive=1209600&sacu=1&ignoreShadow=0&hl=es&acui=0&flowName=GlifWebSignIn&flowEntry=ServiceLogin  Chrome
    maximize browser window
    set selenium speed  1second
    input text  id:identifierId  whuacho18
    ${speed}=  get selenium speed
    log to console  ${speed}
    close browser