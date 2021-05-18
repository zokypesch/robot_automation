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

Fill in the form data for wrong password confirm
    Input Text              xpath=//input[@id='old_password']   ${password}
    Input Text              xpath=//input[@id='password']       ${pswdconfirm}
    Input Text              xpath=//input[@id='password_confirmation']  ${pswdconfirmsalah}
    Click Element           xpath=//input[@value='Simpan']

showing up notification error message password confirm not match 
    Element Text Should Be  xpath=//li[@class='alert__error-item']  Password tidak sama dengan konfirmasi


***Test case***
UPG-001-Pengaturan-006 user can be to see Menu Pengaturan-Ubah Profil-password confirm not match 
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    Fill in the form data for wrong password confirm
    showing up notification error message password confirm not match

    

    
  

