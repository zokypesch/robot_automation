***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***
Search Not Found
    Click Element       xpath=//input[@class='navbar--top--search__input']
    Input Text          name=q  123 diet
    SLEEP               ${SLEEP}
    Click Element       xpath=//button[@class='navbar--top--search__button']
    Element Should Contain     xpath=//p[@class='search-not-found__notice']      Maaf, kami tidak menemukan pencarian 

***Test case***
S-002-Failed-003 Search article with alfanumeric value
        Search Not Found
