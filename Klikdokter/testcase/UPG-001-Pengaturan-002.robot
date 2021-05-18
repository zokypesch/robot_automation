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

replace the previous data contents with updated data
    Clear Element Text      xpath=//textarea[@id='short_bio']
    Input Text              xpath=//textarea[@id='short_bio']   ${updatebio}
    Click Element           xpath=//input[@value='Simpan']

showing up notification Successfully
    Element Text Should Be  xpath=//p[@class='alert__message alert__message_center']    Profile telah berhasil diperbaharui.


***Test case***
UPG-001-Pengaturan-002 user can be to see Menu Pengaturan-Ubah Profil Successfully for existing data
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    replace the previous data contents with updated data
    showing up notification Successfully

    

    
  

