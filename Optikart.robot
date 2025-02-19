*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    Bekebiro
    Input Password    //*[@id="user_password-5474"]    C0i6m2b8
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Farkas Dominik
    Close Browser

login_with_empty_username
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    C0i6m2b8
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser

login_with_empty_password
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    Bekebiro
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_with_empty_credital
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

login_with_wrong_username
    Open Browser    https://keprendeles.optikart.hu/login    firefox
    Input Text    //*[@id="username-5474"]    Bekebiro89
    Input Password    //*[@id="user_password-5474"]    C0i6m2b8
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
