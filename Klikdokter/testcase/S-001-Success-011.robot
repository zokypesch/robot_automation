***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***
Click Tab Video
        Click Element                   xpath=//a[@class='tags--tab__item-link'][contains(text(),'Video')]
        Element Should Contain          xpath=//a[@class='tags--aside-filter__time-item-link tags--aside-filter__time-item-link_active']    Semua
        Click Element                   xpath=//a[contains(text(),'Minggu Ini')]
        Click Element                   xpath=//a[contains(text(),'Bulan Ini')]
        Click Element                   xpath=//a[contains(text(),'Tahun Ini')]

***Test case***
# Descriptiion : 
S-001-Success-0011
        Search a Topic
        Read Random Article
        Read Random Tag
        Click Tab Video
