*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/register.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser


*** keyword ***
Fill in the form register with already exist username
    Input Text    xpath=//input[@id='full_name']    Testingregister001
    Input Text    xpath=//input[@id='username']     ayuu
    Input Text    xpath=//input[@id='email']        Testingregister001.com
    Input Text    xpath=//input[@id='password']     Password12
    Click Element   xpath=//input[@value='Daftar']

Display notification error already exist for username
    Element Should Contain  xpath=//p[@class='form-group__error-message']  Username telah terpakai    

*** Test Case ***
UR-002-Failed-003 user can be register-already exist for username
    Click button login/register
    CLick button Daftar Akun
    Fill in the form register with already exist username
    Display notification error already exist for username