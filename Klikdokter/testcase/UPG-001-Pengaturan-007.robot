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
    SLEEP   ${SLEEP}
    Element Text Should Be  xpath=//div[@class='profile--form__title']  UBAH PROFIL

Fill in the form data for update password successfull
    Input Text              xpath=//input[@id='old_password']   ${password}
    Input Text              xpath=//input[@id='password']       ${pswdconfirm}
    Input Text              xpath=//input[@id='password_confirmation']  ${pswdconfirm}
    Click Element           xpath=//input[@value='Simpan']

showing up notification Successfully
    Element Text Should Be  xpath=//p[@class='alert__message alert__message_center']    Profile telah berhasil diperbaharui.


***Test case***
UPG-001-Pengaturan-007 user can be to see Menu Pengaturan-Ubah Profil-password successfull
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    Fill in the form data for update password successfull
    showing up notification Successfully

    

    
  

