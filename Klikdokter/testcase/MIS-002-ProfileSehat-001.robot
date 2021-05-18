***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***

***Test case***
MIS-002-ProfileSehat-001
        Menu Info Sehat Tab Profil Kesehatan
        Read Main Article Profil Sehat
        SLEEP                           ${SLEEP}
        Menu Info Sehat Tab Profil Kesehatan
        Read List Article Profil Sehat
        SLEEP                           ${SLEEP}
        Menu Info Sehat Tab Profil Kesehatan
        Read Profil Sehat Selengkapnya



