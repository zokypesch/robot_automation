*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/register.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser


*** keyword ***
Menu Register
Fill in the form register success
    Input Text      xpath=//input[@id='full_name']  ${new_user_fullname}
    Input Text      xpath=//input[@id='username']  ${new_user_username}
    Input Text      xpath=//input[@id='email']  ${new_user_email}
    Input Text      xpath=//input[@id='password']  ${new_user_password}
    Wait Until Page Contains Element        xpath=//div[@class='authentication--register--form__recaptcha g-recaptcha']
    Click Element   xpath=//div[@class='authentication--register--form__recaptcha g-recaptcha']
    Sleep           ${SLEEP}
    Wait Until Page Contains Element        xpath=//input[@value='Daftar']
    Click Element   xpath=//input[@value='Daftar']
    

Display confirmation successfully for register
    Title Should be                     xpath=//div[@class='authentication--popup__header']      Sukses
    Element Should Contain              xpath=//div[@class='authentication--popup__header']      Sukses
    Element Should Contain              xpath=//p[@class='authentication--popup__info']         Kami telah mengirimkan email verifikasi. Silakan cek email Anda untuk verifikasi akun.

*** Test Case ***
UR-001-Success-001 user can be register Successfully
    click button login/register
    click button Daftar Akun
    Fill in the form register success
    Display confirmation successfully for register
# Note : tidak bisa lanjut karena ada capcha