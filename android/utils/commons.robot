*** Settings ***

Resource    ../base.robot

*** Keywords ***

Esperar e clicar no item
    [Arguments]                      ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Verifica text no content
    [Arguments]                      ${elemento}              ${text}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain                   ${contentDesc}            ${text}

Verifica se nao tem text no content
    [Arguments]                      ${elemento}               ${text}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute     ${elemento}    content-desc
    Should Not Contain               ${contentDesc}            ${text}