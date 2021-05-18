*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

***Keyword***

***Test case***
UP-001-Profile-001 user can be click and see Aktivitas menu
    login
    Dropdown User Account
    click Menu profile
    click & verify Aktivitas Menu
  

