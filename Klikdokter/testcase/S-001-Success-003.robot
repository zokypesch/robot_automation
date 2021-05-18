***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***
Search a Topic
    Click Element       xpath=//input[@class='navbar--top--search__input']
    Input Text          name=q  makanan protein
    SLEEP               ${SLEEP}
    Click Element       xpath=//button[@class='navbar--top--search__button']
    Location Should Contain     ${URL_TARGET}/search?q=makanan+protein
See Tab Photo
        Click Element                   xpath=//a[contains(text(),'Foto')]
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/search?q=makanan+protein&type=photo
Play Photo
        Click Element                   xpath=//*[@id="main"]/div[3]/div/section/div[2]
        SLEEP                           ${SLEEP}
        Element Should Contain          xpath=//div[@class='search-results--images--popup__article-header']     FOTO PADA ARTIKEL

***Test case***
S-001-Success-003 Search article with specific topic, and see photo
        Search a Topic
        See Tab Photo
        Play Photo

