*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/menuobat.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

*** Keywords ***

    
*** Variables ***
${count}        1
${title_obat}    xpath=/html[1]/body[1]/div[6]/div[1]/div[2]/div[1]/div[1]/div+[${count}]/h3[1]

*** Test Cases ***
MO-001-MenuObatAll-001 see the listing All Menu Obat from A-Z
    # login / tdk login , tampilan menu obat sama
    Click Menu Tab Obat
    ${found}=              Get Element Count     xpath=/html[1]/body[1]/div[6]/div[1]/div[2]/div[1]/div[1]/div[${count}]/h3[1]
    Run Keyword If         ${found}==${count}+1     A   ELSE If  B  ELSE If  C  ELSE If  D  ELSE If  E  ELSE If  F  ELSE If  G  ELSE If  H  ELSE If  I  ELSE If  J  ELSE If  K  ELSE If  L  ELSE If  M  ELSE If  N  ELSE If  O  ELSE If  P  ELSE If  Q  ELSE If  R  ELSE If  S  ELSE If  T  ELSE If  U  ELSE If  V  ELSE If  W  ELSE If  X  ELSE If  Y  ELSE If  Z
