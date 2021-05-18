*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/register.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

*** keyword ***
Fill in the form register with invalid email format
    Input Text    xpath=//input[@id='full_name']    Testingregister001
    Input Text    xpath=//input[@id='username']     Testingregister001
    Input Text    xpath=//input[@id='email']        Testingregister001.com
    Input Text    xpath=//input[@id='password']     Password12
    Click Element   xpath=//input[@value='Daftar']

Display notifications error invalid email format
    Element Should Contain  xpath=//p[@class='form-group__error-message']  Format email tidak sesuai

*** Test Case ***
UR-002-Failed-002 user can be register-invalid email format
    Click button login/register
    CLick button Daftar Akun
    Fill in the form register with invalid email format
    Display notifications error invalid email format