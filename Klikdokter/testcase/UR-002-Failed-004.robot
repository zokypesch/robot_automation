*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/register.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser


*** keyword ***
Fill in the form register with incomplete fullname
    Input Text    xpath=//input[@id='full_name']    ${incompletefullname}
    Input Text    xpath=//input[@id='username']     ${usernamecomplete}
    Input Text    xpath=//input[@id='email']        ${emailcomplete}
    Input Text    xpath=//input[@id='password']     ${passcomplete}
    Click Element   xpath=//input[@value='Daftar']

Display notification error incomplete fullname
    Element Should Contain  xpath=//p[@class='form-group__error-message']   Nama Lengkap harus diisi

*** Test Case ***
UR-002-Failed-004 user can be register- incomplete fullname
    Click button login/register
    CLick button Daftar Akun
    Fill in the form register with incomplete fullname
    Display notification error incomplete fullname