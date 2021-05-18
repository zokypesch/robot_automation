***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***

***Test case***
MIS-001-BeritaKesehatan-001
        Menu Info Sehat Tab Berita Kesehatan
        Read Main Article
        SLEEP                           ${SLEEP}
        Menu Info Sehat Tab Berita Kesehatan
        Read List Article
        SLEEP                           ${SLEEP}
        Menu Info Sehat Tab Berita Kesehatan
        Read Berita Kesehatan Selengkapnya



