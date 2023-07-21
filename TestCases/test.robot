*** Settings ***
Library    SeleniumLibrary
Library    ../.venv/Lib/site-packages/robot/libraries/Collections.py

*** Variables ***
${BROWSER}    Chrome
${website}    https://www.messenger.com/
${user}       Your email address 
${pass}       Your email password 
${name}       Full name

*** Test Cases ***
Login and Go to Search Bar
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window
    Go To        ${website}
    Input Text    name=email       ${user} 
    Input Text    name=pass        ${pass} 
    Click Button   name=login
    Sleep    5s
    Click Element    css:input[type="search"]
    Input Text    css:input[type="search"]    ${name} 
    Sleep    3s
    Click Element    css:li[id="your id"]  
    Sleep    5s    
    Click Element    css:div[aria-label="Message"]
    Input Text    css:div[aria-label="Message"]   "Goodevening"
    Sleep    3s
    Click Element   css:svg[class="xsrhx6k"]
    Sleep    3s
    Click Element    css:div[aria-label="Settings, help and more"]
    Sleep    3s
    Click Element    css:div[role='menuitem']
    Close Browser
