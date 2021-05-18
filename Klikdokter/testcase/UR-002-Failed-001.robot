*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/register.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

*** keyword ***
Fill in the form register with minimum 7 character
    Input Text      xpath=//input[@id='full_name']  Testingregister001
    Input Text      xpath=//input[@id='username']   Testingregister001
    Input Text      xpath=//input[@id='email']      Testingregister@001.com
    Input Text      xpath=//input[@id='password']   password12
    Click Element   xpath=//input[@value='Daftar']

Display notifications error invalid password
    Element Should Contain  xpath=//p[@class='form-group__error-message']  Password tidak valid, minimal 7 karakter mengandung huruf besar, huruf kecil dan angka

*** Test Case ***
UR-002-Failed-001 user can be register-invalid password minimum 7 character
    Click button login/register
    CLick button Daftar Akun
    Fill in the form register with minimum 7 character
    Display notifications error invalid password