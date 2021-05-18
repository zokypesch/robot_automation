*** setting ***
Library     Selenium2Library
Library     OperatingSystem
Variables  ../var/user_pengaturan.py
Resource   ../service/resource.robot
Resource   ../service/setting.robot
Test Setup      Setup Browser
Test Teardown   Close browser

***Keyword***
showing up form ubah profile
    Element Text Should Be  xpath=//div[@class='profile--form__title']  UBAH PROFIL

Fill in the form data for cancel
    Clear Element Text      xpath=//textarea[@id='short_bio']
    Input Text              xpath=//textarea[@id='short_bio']   ${inputbiobatal}
    Click Element           xpath=//a[@class='profile--form__button profile--form__button_cancel']

the user is directed to the home page
    Location Should Contain  ${URL_TARGET}/


***Test case***
UPG-001-Pengaturan-003 user can be to see Menu Pengaturan-Ubah Profil and click button Batal
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    Fill in the form data for cancel
    the user is directed to the home page

    

    
  

