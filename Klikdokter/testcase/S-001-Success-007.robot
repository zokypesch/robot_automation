***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot

Test Setup      Setup Browser

Test Teardown   Close browser

| Variables | ../var/profile.py
*** Variables ***

***Keyword***
Click Artikel Tanya Dokter Lainnya
        Click Element                   xpath=//button[contains(text(),'Artikel Tanya Dokter Lainnya')]
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/search?q=${search_input}&channel_id=611
        
***Test case***
S-001-Success-007
        Search a Topic
        Click Artikel Tanya Dokter Lainnya
        

