*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

***Keyword***
Fill in the form login with password wrong
    Input Text          xpath=//INPUT[@id='username']  ${USERNAME}
    Input Text          xpath=//INPUT[@id='password']  ${passwordWrong}
    Click Element       xpath=//button[@class='authentication--login--form__show-password']
    CLick Element       xpath=//input[@value='Masuk']

Display notifications error invalid password
    Element Should Contain  xpath=//p[@class='form-group__error-message']  Password salah.


***Test case***
UL-002-Failed-002 user can be login - Invalid Password
    Click button login/register
    Fill in the form login with password wrong
    Display notifications error invalid password