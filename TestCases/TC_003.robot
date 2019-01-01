*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC_003 Variable Test
    #${Var1}=  set variable  HelloWorld
    #log to console  ${Var1}
    @{List1}  create list  Hello  22  23.33  World  Abcd1234
    #${list_length}  get length  ${List1}  #@{List1} --> Crea la lista;  ${List1}  Lo llama como una variable
    #log to console  ${list_length}
    #${list_data}=  get from list  ${List1}  0
    #log to console  ${list_data}
    : FOR   ${i}  IN RANGE  1   10
    \   log to console  ${i}

    : FOR   ${i}  IN  @{List1}
    \   log to console  ${i}

*** Keywords ***
