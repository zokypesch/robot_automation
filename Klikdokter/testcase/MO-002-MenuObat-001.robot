*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Library     Collections
Variables  ../var/menuobat.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

***Variables***
${currentglobal}        //div[@class='topics-index']/div/div
# ${google}               https://www.google.com
# ${google1}              https://www.google.com/gmail

*** Keywords ***
Showing Up Listing All Menu Obat
        ${countGlobalObat}=        Get Element Count       xpath=${currentglobal} 
        ${randomglobal}=           Evaluate        random.sample(range(1, ${countGlobalObat}), 1)     random
        Log     ${countGlobalObat}
        Log     ${randomglobal}
        ${countcolumnObat}=     Get Element Count       xpath=//div[@class='topics-index']/div/div${randomglobal}/ul
        Log     ${countcolumnObat}
        Run Keyword If          ${countcolumnObat} == "0"     Menu Obat Not Found   Else    Menu Obat Found 

        ${randomcolumn}=        Evaluate        random.sample(range(1, ${countcolumnObat}), 1)     random
        ${countbarisObat}=      Get Element Count       xpath=//div[@class='topics-index']/div/div${randomglobal}/ul${randomcolumn}/li
        Log     ${countbarisObat}

Click on the spesfic medicine name
        Click Element           xpath=//a[@class='topics-index--section__item-link']
        ${countelementexisting}=     Get Element Count       xpath=//ul[@class='tags--quick-links__list']/li
        ${randomexisting}=           Evaluate        random.sample(range(1, ${countelementexisting}), 1)     random
        ${valueelement}=    Get Text        xpath=//ul[@class='tags--quick-links__list']/li${randomexisting}
        Log     ${countelementexisting}
        Log     ${randomexisting}
        Log     ${valueelement}
        Click Element           xpath=//ul[@class='tags--quick-links__list']/li${randomexisting}
        ${countheader}=     Get Element Count       xpath=//div[@class='tags--content']//h2[@class='topics--content__section-header']
        ${randomheader}=       Evaluate         random.sample(range(1, ${countheader}),1)       random
        ${valueheader}=         Get Text       xpath=//div[@class='tags--content']//h2[@class='topics--content__section-header']${randomheader}
        Log     ${countheader}
        Log     ${valueheader}
        # Set Focus To Element    xpath=//div[@class='tags--content']//h2[@class='topics--content__section-header'][]

***Test Cases***

MO-001-MenuObatAll-001 read specific medicine in Menu Obat 
    Click Menu Tab Obat
    Showing Up Listing All Menu Obat
    Click on the spesfic medicine name
    

