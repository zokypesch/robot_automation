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

upload your foto and template
# upload template
    Click Element           xpath=//a[@id='change-profile-cover-link']
    Choose File             id=change-profile-cover-link    ${template}
#upload foto
    Mouse over              xpath=//a[@id='change-profile-picture-link']
    Click Element           xpath=//a[@id='change-profile-picture-link']
    Choose File             id=change-profile-cover-link    ${foto}
#simpan
    Click Element           xpath=//input[@value='Simpan']


showing up notification Successfully
    Element Text Should Be  xpath=//p[@class='alert__message alert__message_center']    Profile telah berhasil diperbaharui.


***Test case***
UPG-001-Pengaturan-008 user can be to see Menu Pengaturan-Ubah gambar Foto-template successfull
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    upload your foto and template
    showing up notification Successfully

    

    
  

