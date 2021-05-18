***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot

# | Variables | ../var/profile

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***
Read article related with tag
        Click Element                   xpath=//a[@class='tags--snippet__link js-tags-link']
        SLEEP                           ${SLEEP}   
        Element Should Contain          xpath=//a[@class='tags--tab__item-link tags--tab__item-link_active']    Semua

Check Location
        Location Should Contain         ${URL_TARGET}/info-sehat/read/

***Test case***
MIS-001-BeritaKesehatan-002
        Menu Info Sehat Tab Berita Kesehatan
        Read Main Article
        SLEEP                           ${SLEEP}
        
        ${found}=              Get Element Count     xpath=//div[@class='baca-juga']
        Run Keyword If          ${found}==${1}  Click Baca Juga         ELSE    Check Location 
        
        Read article related with tag
        
        



