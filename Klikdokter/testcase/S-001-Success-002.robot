***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot

Test Setup      Setup Browser

Test Teardown   Close browser

| Variables | ../var/profile.py
*** Variables ***

${SLEEP2}                    50s

***Keyword***
Search a Topic
    Click Element       xpath=//input[@class='navbar--top--search__input']
    Input Text          name=q  jerawat
    SLEEP               ${SLEEP}
    Click Element       xpath=//button[@class='navbar--top--search__button']
    Location Should Contain     ${URL_TARGET}/search?q=jerawat

See tab video
        Click Element                   xpath=//a[@class='articles--search-filter__item-link'][contains(text(),'Video')]
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/search?q=jerawat&type=video
Play video
        Click Element                   xpath=//a[@class='ui--a gallery--grid--video__title-link js-list-link']
        SLEEP                           ${SLEEP}
        Element Should Contain          xpath=//span[@class='search-results--videos--popup__share-text-label']          Share
        SLEEP                           ${SLEEP2}
        
***Test case***
#I want to search video with specific topic than i play the video
S-001-Success-002
        Search a Topic
        See tab video
        Play video

