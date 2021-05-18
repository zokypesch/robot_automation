***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***


***Test case***
MSP-001-GigiMulut-001 klik quick menu gigimulut in menu specilaist, read one of the article
        Menu Specialist Gigimulut
        Read Article Gigimulut


