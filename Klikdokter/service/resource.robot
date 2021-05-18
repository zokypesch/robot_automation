***setting***

Library     Selenium2Library

| Variables | ../var/login.py

*** Variables ***

${SLEEP}                    3s
${randTag}      1
***Keyword***
# LOGIN AND lOGOUT
Login
    Click Element           xpath=//A[@id='login']
    Element Text Should Be  xpath=//H1[@class='authentication--login__heading'][text()='Masuk']  Masuk
    Input Text              xpath=//INPUT[@id='username']  ${USERNAME}
    Input Text              xpath=//INPUT[@id='password']  ${PASSWORD}
    Click Element           xpath=//button[@class='authentication--login--form__show-password']
    CLick Element           xpath=//input[@value='Masuk']

Logout
    Mouse Over              xpath=//a[@id='dropdown-user']
    CLick Element           xpath=//a[@class='navbar--top--user-dropdown__menu-item navbar--top--user-dropdown__menu-item-logout']
    Element Should Contain  xpath=//a[@id='login']  LOGIN / REGISTER 

# MENU REGISTER
click button login/register
    Element Should Contain      xpath=//a[@id='login']  LOGIN / REGISTER
    Click Element               xpath=//A[@id='login']

click button Daftar Akun
    Click Element               xpath=//a[@class='authentication--login--form__register-link']

# SUB MENU IN MENU PROFILE-ACCOUNT 
Dropdown User Account
    Mouse Over                          xpath=//a[@id='dropdown-user']

click Menu profile
    Wait Until Page Contains Element    xpath=//a[@class='navbar--top--user-dropdown__menu-item navbar--top--user-dropdown__menu-item-profile']
    Click Element                       xpath=//a[@class='navbar--top--user-dropdown__menu-item navbar--top--user-dropdown__menu-item-profile']
     
click & verify Aktivitas Menu
    Click Element                       xpath=//a[contains(text(),'Aktivitas')]
    Element Should Contain              xpath=//a[contains(text(),'Aktivitas')]  Aktivitas

click & verify Profil Menu
    Element Should Contain              xpath=//a[@class='profile--navbar__navbar-link'][contains(text(),'Profil')]  Profil
    Click Element                       xpath=//a[@class='profile--navbar__navbar-link'][contains(text(),'Profil')]

click & verify Artikel Menu
    Element Should Contain              xpath=//a[contains(text(),'Artikel')]  Artikel
    Click Element                       xpath=//a[contains(text(),'Artikel')]

click & verify Foto Menu
    Element Should Contain              xpath=//a[contains(text(),'Foto')]  Foto
    Click Element                       xpath=//a[contains(text(),'Foto')]  

click & verify Video Menu
    Element Should Contain              xpath=//a[@class='profile--navbar__navbar-link'][contains(text(),'Video')]  Video
    Click Element                       xpath=//a[@class='profile--navbar__navbar-link'][contains(text(),'Video')]    

click Menu Pengaturan
    Wait Until Page Contains Element    xpath=//a[@class='navbar--top--user-dropdown__menu-item navbar--top--user-dropdown__menu-item-settings']           
    Click Element                       xpath=//a[@class='navbar--top--user-dropdown__menu-item navbar--top--user-dropdown__menu-item-settings']

Click Menu Tab Obat   
    Element Text Should Be      xpath=//a[contains(text(),'Obat')]  OBAT
    Click Element               id=channel-obat
    Element Should contain     xpath=//h3[@class='topics-index--header__title']    INDEKS OBAT

# Search
Search a Topic
    Click Element       xpath=//input[@class='navbar--top--search__input']
    Input Text          name=q  ${search__input}
    SLEEP               ${SLEEP}
    Click Element       xpath=//button[@class='navbar--top--search__button']
    Location Should Contain    ${URL_TARGET}/search?q=${search__input}

Read Random Article
       #Get count article
       ${countArticle}=        Get Element Count       xpath=//div[@class="articles"]/div/div
       ${read_random}=     Evaluate        random.sample(range(1, ${countArticle}), 1)     random

       #Goto Random Article
       ${urlRead}=          Get Element Attribute       xpath=//div[@class="articles"]/div/div${read_random}//a[contains(@class, 'articles--item__link')]   href
       Click Element   xpath=//div[@class="articles"]/div/div${read_random}//a[contains(@class, 'articles--item__link')]
       SLEEP                           ${SLEEP}
       Select Window                   NEW
       Location Should Contain         ${urlRead}
Read Random Tag
       #count tag current page
       ${totalTag}=    Get Element Count       xpath=//ul[@class='tags--snippet__list']/li
       Run Keyword If  ${totalTag} > 1         ${randTag}=             Evaluate        random.sample(range(1, ${totalTag}), 1)   random

       Execute JavaScript      document.getElementById("skinads").remove();
       Click Element   xpath=//ul[@class='tags--snippet__list']/li[${randTag}]/a
       SLEEP   ${SLEEP}
       Element Should Contain          xpath=//a[@class='tags--tab__item-link tags--tab__item-link_active']    Semua

Filter Popular
        Select From List By Value        xpath=//select[@name='order']                  popular
Filter Terbaru
        Select From List By Value        xpath=//select[@name='order']                  latest
Filter Relevansi
        Select From List By Value        xpath=//select[@name='order']                  relevance

Filter Semua Kanal
        Select From List By Index        xpath=//select[@name='channel_id']                0
Filter Info Sehat
        Select From List By Index        xpath=//select[@name='channel_id']                1 
Filter Lab 
        Select From List By Index        xpath=//select[@name='channel_id']                2     
Filter Photo 
        Select From List By Index        xpath=//select[@name='channel_id']                3 
Filter Specialist 
        Select From List By Index        xpath=//select[@name='channel_id']                4 
Filter Video 
        Select From List By Index        xpath=//select[@name='channel_id']                5 

Filter From Date
        Clear Element Text      xpath=//input[@class='form-input-text advanced-search__date-range-from__input hasDatepicker']
        Input Text              name=from_date  01/01/2018
        SLEEP                   ${SLEEP}
Button Filter Cari Article
        Click Button            xpath=//button[contains(text(),'Cari Artikel')]
        SLEEP                   ${SLEEP}
Article Found
        Click Element           xpath=//h4[@class='articles--iridescent-list--text-item__title']
        SLEEP                   ${SLEEP}
Article Not Found
        Element Should Contain  xpath=//p[@class='search-not-found__notice']     Maaf, kami tidak menemukan pencarian 

# Menu Specialist
Menu Specialist Gigimulut
        Mouse Over              xpath=//li[@id='channel-rubrik']
        SLEEP                   ${SLEEP}
        Mouse Over              xpath=//div[@class='navbar--mix-menu--rubrik__list']
        Click Element           xpath=//a[@href="${URL_TARGET}/rubrik/gigi-mulut"]
        Title Should be         Gigi & Mulut - Rubrik Spesialis Klikdokter
Read Article Gigimulut
        Mouse Over              xpath=//span[@class='articles--iridescent-list--text-item__title-link-text']
        SLEEP                   ${SLEEP}
        Click Element           xpath=//span[@class='articles--iridescent-list--text-item__title-link-text']
        Location Should Contain  ${URL_TARGET}/rubrik/read/

Menu Specialist Kanker
        Mouse Over              xpath=//li[@id='channel-rubrik']
        SLEEP                   ${SLEEP}
        Mouse Over              xpath=//div[@class='navbar--mix-menu--rubrik__list']
        Click Element           xpath=//a[@href="${URL_TARGET}/rubrik/kanker"]
        Title Should be         Kanker - Rubrik Spesialis Klikdokter
# Todo for another specialist submenu and menu klik

# Menu Info Sehat
Menu Info Sehat Tab Berita Kesehatan
        Mouse over              //a[contains(@class,'navbar--mix-menu__item-link')][contains(text(),'Info Sehat')]
        SLEEP                   ${SLEEP}
        Mouse Over              xpath=//ul[@class='tabs--header']
        Click Element           xpath=//*[@id="channel-info-sehat"]/div/div/div/ul/li[1]/a
        Element Should Contain  xpath=//a[@class='navbar--mix-menu--mega--item__more']          Lihat Selengkapnya Berita Kesehatan

Menu Info Sehat Tab Profil Kesehatan
        Mouse over              //a[contains(@class,'navbar--mix-menu__item-link')][contains(text(),'Info Sehat')]
        SLEEP                   ${SLEEP}
        Mouse Over              xpath=//ul[@class='tabs--header']//li[2]
        Click Element           xpath=//span[contains(text(),'Profil Sehat')]
        SLEEP                   ${SLEEP}
        Element Should Contain  xpath=//a[contains(text(),'Lihat Selengkapnya Profil Sehat')]          Lihat Selengkapnya Profil Sehat
Menu Info Sehat Tab Gaya Hidup
        Mouse over              //a[contains(@class,'navbar--mix-menu__item-link')][contains(text(),'Info Sehat')]
        SLEEP                   ${SLEEP}
        Mouse Over              xpath=//ul[@class='tabs--header']//li[2]
        Click Element           xpath=//span[contains(text(),'Gaya Hidup')]
        SLEEP                   ${SLEEP}
        Element Should Contain  xpath=//a[contains(text(),'Lihat Selengkapnya Gaya Hidup')]             Lihat Selengkapnya Gaya Hidup

Menu Klik Info Sehat
        Click Element           xpath=//li[@id='channel-info-sehat']
        Title Should be         Info Kesehatan - Klikdokter

Read Main Article
        Mouse Over                      xpath=//div[@class='navbar--mix-menu--mega--item__article navbar--mix-menu--mega--item__article_first']
        SLEEP                           ${SLEEP}
        Click Element                   xpath=//div[@class='navbar--mix-menu--mega--item__article navbar--mix-menu--mega--item__article_first']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/
Read List Article
        Mouse Over                      xpath=//div[@class='navbar--mix-menu--mega--item__article']
        SLEEP                           ${SLEEP}
        Click Element                   xpath=//div[@class='navbar--mix-menu--mega--item__article']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/
        
Read Berita Kesehatan Selengkapnya
        Click Element                   xpath=//a[contains(text(),'Lihat Selengkapnya Berita Kesehatan')]
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/berita-kesehatan
Read Main Article Profil Sehat
        Mouse Over                      xpath=//div[@class='navbar--mix-menu--mega--item__article navbar--mix-menu--mega--item__article_first']
        SLEEP                           ${SLEEP}
        Click Element                   xpath=//div[@id='tab-619']//a[@class='navbar--mix-menu--mega--item__read-more']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/
Read List Article Profil Sehat
        Mouse Over                      xpath=//div[@class='navbar--mix-menu--mega--item__article']
        SLEEP                           ${SLEEP}
        Click Element                   xpath=//div[@id='tab-619']//a[@class='navbar--mix-menu--mega--item__link']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/
Read Profil Sehat Selengkapnya
        Click Element                   xpath=//div[@id='tab-619']//a[@class='navbar--mix-menu--mega--item__more']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/profil-sehat
Read Main Article Gaya Hidup
        Click Element                   xpath=//div[@id='tab-695']//a[@class='navbar--mix-menu--mega--item__read-more']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/
Read List Article Gaya Hidup
        Mouse Over                      xpath=//div[@class='navbar--mix-menu--mega--item__article']
        SLEEP                           ${SLEEP}
        Click Element                   xpath=//div[@id='tab-695']//a[@class='navbar--mix-menu--mega--item__link']
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/


Click Baca Juga
        Click Element                   xpath=//ul[@class='baca-juga__list']//li[1]
        SLEEP                           ${SLEEP}
        Location Should Contain         ${URL_TARGET}/info-sehat/read/
Click Tanya Dokter Button
        Click Element           xpath=//a[@class='tanya-dokter--ask__button js-tanya-dokter--ask']
        Select Radio Button     gender  female
        Input Text              xpath=//input[@id='age']        ${user_age}
        Input Text              xpath=//input[@id='weight']     ${user_age}
        Input Text              xpath=//input[@id='height']     ${user_age}
        Select From List By Value        xpath=//select[@id='blood_type']       a
        Select From List By Value        xpath=//select[@id='blood_type']       b
        Input Text              xpath=//textarea[@id='question']        ${pertanyaan}
        Select Checkbox         xpath=//input[@id='check']
        SLEEP                   ${SLEEP}
        Click Element           xpath=//input[@type='submit']
        SLEEP                   ${SLEEP}
        Page Should Contain Element     xpath=//i[@class='tanya-dokter--success__icon i-success']
        Click Element           xpath=//a[@class='tanya-dokter--success__button js-tanya-dokter--success__button']
Click Article Credit
        Click Element                   xpath=//a[@class='read-page--credits__item-link']
        SLEEP                           ${SLEEP}
        Element Should Contain         xpath=//a[@class='profile--navbar__navbar-link profile--navbar__navbar-link_active']     Aktivitas
Add Comment
        Input Text              xpath=//textarea[@id='js-textarea']     ${comment}
        SLEEP           ${SLEEP}
        Click Element           xpath=//div[@class='comments--form__button']
        SLEEP           ${SLEEP}
        Element Should Contain  xpath=//p[@class='comments--list--item__content-paragraph']     ${comment}

# Menu Obat

Menu Obat Found
        Element Should Not Contain          xpath=//a[@class='topics-index--section__item-link']
        SLEEP                   ${SLEEP}

Menu Obat Not Found
        Element Should Not Contain        xpath=//div[@class='topics-index--section topics-index--section_empty'] 
        Close browser
        Element Should Contain  xpath=//p[@class='comments--list--item__content-paragraph']     ${comment}

