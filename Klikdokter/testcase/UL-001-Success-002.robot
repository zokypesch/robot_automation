*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

***Keyword***
verify the correct username
    Sleep                 ${SLEEP}
    Element Text Should Be      xpath=//div[@class='profile__fullname']     ${DISPLAYNAME} 
    
Showing up Menu Home Page
  Element Should Contain  xpath=//a[contains(text(),'Home')]  HOME


***Test case***
UL-001-Success-002 User can be logout Successfull
    login
    Dropdown User Account
    click Menu profile
    verify the correct username
    Showing up Menu Home Page
    Logout
  

