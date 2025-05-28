*** Settings ***
Library           Browser
Library           ../libs/database.py
Resource          env.robot
Resource          pages/SignupPage.robot

*** Keywords ***
Start Session
    New Browser    chromium    headless=False
    New Page       ${BASE_URL}

Close Session
    Close Browser
