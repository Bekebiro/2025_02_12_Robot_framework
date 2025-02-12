*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://keprendeles.optikart.hu/login
    Input Text    //*[@id="username-5474"]    Bekebiro
    Input Password    //*[@id="user_password-5474"]    C0i6m2b8
    Click Button    //*[@id="um-submit-btn"]
