*** setting ***
Library     Selenium2Library
Library     OperatingSystem
| Variables | ../var/register.py
| Resource  | ../service/resource.robot
| Resource  | ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

*** Keywords ***
Click button facebook
    Wait Until Page Contains Element    xpath=//span[@class='authentication--register__social-media-title'][contains(text(),'Facebook')]
    Click Element                       xpath=//span[@class='authentication--register__social-media-title'][contains(text(),'Facebook')]

Enter email and password Login facebook
    Sleep                 ${SLEEP}
    Wait Until Page Contains Element    xpath=//input[@id='email']
    Input Text                          xpath=//input[@id='email']     ${fbregis}
    Wait Until Page Contains Element    xpath=//input[@id='pass']
    Input Text                          xpath=//input[@id='pass']      ${fbpass}
    Click Element                       xpath=//button[@id='loginbutton']

*** Test Cases ***
UR-001-Success-003 user can be register-facebook success
# facebook skip
    Click button login/register
    CLick button Daftar Akun
    Click button facebook   
    Enter email and password Login facebook
    Select Window   Title=Berita Terkini Dunia Kesehatan Terpercaya - Klikdokter
    Element Should Contain  xpath=//img[@title='AyHuu Alifah']
