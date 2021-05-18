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

Fill in the form data for wrong password now
    Input Text              xpath=//input[@id='old_password']   ${passwordWrong}
    Input Text              xpath=//input[@id='password']       ${pswdconfirm}
    Input Text              xpath=//input[@id='password_confirmation']  ${pswdconfirm}
    Click Element           xpath=//input[@value='Simpan']

showing up notification error message wrong password
    Element Text Should Be  xpath=//li[@class='alert__error-item']  Password salah


***Test case***
UPG-001-Pengaturan-005 user can be to see Menu Pengaturan-Ubah Profil-password now is wrong
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    Fill in the form data for wrong password now
    showing up notification error message wrong password

    

    
  

