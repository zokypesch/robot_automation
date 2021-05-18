*** setting ***
Library     Selenium2Library
Library     OperatingSystem
| Variables | ../var/register.py
| Resource  | ../service/resource.robot
| Resource  | ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

*** Keywords ***
Click button google
    Wait Until Page Contains Element    xpath=//span[@class='authentication--register__social-media-title'][contains(text(),'Google')]
    Click Element                       xpath=//span[@class='authentication--register__social-media-title'][contains(text(),'Google')]

Input your gmail account for registrasi           
    Wait Until Page Contains Element    xpath=//INPUT[@id='identifierId']
    Input Text                          xpath=//INPUT[@id='identifierId']     ${gmailreg}
    Wait Until Element Is Visible       xpath=//SPAN[@class='RveJvd snByac'][text()='Berikutnya']
    Click Element                       xpath=//SPAN[@class='RveJvd snByac'][text()='Berikutnya']
    Sleep                               ${SLEEP}
    Wait Until Element Is Visible       xpath=//CONTENT[text()='Selamat datang']
    Element Text Should Be              xpath=//CONTENT[text()='Selamat datang']    Selamat datang
    Wait Until Page Contains Element    xpath=//INPUT[@type='password']
    Input Text                          xpath=//INPUT[@type='password']     ${passgmail}
    Wait Until Page Contains Element    xpath=//SPAN[@class='RveJvd snByac'][text()='Berikutnya']
    Click Element                       xpath=//SPAN[@class='RveJvd snByac'][text()='Berikutnya']
    Sleep                               ${SLEEP}
    
verify username registration success
    Sleep                 ${SLEEP}
    Element Text Should Be      xpath=//div[@class='profile__fullname']     ${displaynameuserregisgmail}

*** Test Cases ***
UR-001-Success-002 user can be register-google success
    Click button login/register
    CLick button Daftar Akun
    Click button google
    Input your gmail account for registrasi
    Dropdown User Account
    click Menu profile
    verify username registration success