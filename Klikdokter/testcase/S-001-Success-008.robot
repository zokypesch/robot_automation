***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot

Test Setup      Setup Browser

Test Teardown   Close browser

| Variables | ../var/profile.py
*** Variables ***

***Keyword***
Filter
        Select From List By Value        xpath=//select[@name='order']                  relevance
        Select From List By Index        xpath=//select[@name='channel_id']                0          
        Clear Element Text      xpath=//input[@class='form-input-text advanced-search__date-range-from__input hasDatepicker']
        Input Text              name=from_date  01/01/2019
        Clear Element Text      xpath=//input[@class='form-input-text advanced-search__date-range-to__input hasDatepicker']
        Input Text              name=to_date  02/01/2019
        SLEEP                   ${SLEEP}
        Click Button            xpath=//button[contains(text(),'Cari Artikel')]
        SLEEP                   ${SLEEP}
Read article tag
        Click Element                   xpath=//span[contains(text(),'antioksidan')]
        SLEEP                           ${SLEEP}
        Select Window                   NEW
        Location Should Contain         ${URL_TARGET}/tag/      
        Element Should Contain          xpath=//a[@class='tags--tab__item-link tags--tab__item-link_active']    Semua
        SLEEP                           ${SLEEP}

***Test case***
S-001-Success-008
        Search a Topic
        Filter
        Read article tag
        
        

