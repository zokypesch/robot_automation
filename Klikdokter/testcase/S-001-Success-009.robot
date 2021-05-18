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
Filter date
        Clear Element Text      xpath=//input[@class='form-input-text advanced-search__date-range-from__input hasDatepicker']
        Input Text              name=from_date  01/01/2019
        Clear Element Text      xpath=//input[@class='form-input-text advanced-search__date-range-to__input hasDatepicker']
        Input Text              name=to_date  02/01/2019
        Click Button            xpath=//button[contains(text(),'Cari Artikel')]
        SLEEP                   ${SLEEP}

***Test case***
S-001-Success-009
        Search a Topic
        Filter date
        

