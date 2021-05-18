*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

***Keyword***
Fill in the form login with username or email wrong
    Input Text          xpath=//INPUT[@id='username']  ${UsernameUnreg}
    Input Text          xpath=//INPUT[@id='password']  ${PASSWORD}
    Click Element       xpath=//button[@class='authentication--login--form__show-password']
    CLick Element       xpath=//input[@value='Masuk']

Display notifications error username/email not found
    Element Should Contain  xpath=//p[@class='form-group__error-message']  Username atau email tidak dapat ditemukan.


***Test case***
UL-002-Failed-001 user can be login - username/email wrong
    Click button login/register
    Fill in the form login with username or email wrong
    Display notifications error username/email not found