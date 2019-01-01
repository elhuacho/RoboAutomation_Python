*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC_004 Variable Test
    ${Key_var}=  set variable  log to console
    run keyword  ${Key_var}  whuacho18@gmail.com

    ${var}=  set variable  YES
    run keyword if  '${var}'=='YES'  log to console  Value Found
    run keyword if  '${var}'=='NO'  log to console  Value Not Found