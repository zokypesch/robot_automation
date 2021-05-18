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

Fill in the form data invalid format date(Date of birth)
    Input Text              xpath=//input[@id='birthday']   ${tgllahirwrong}
    Click Element           xpath=//input[@value='Simpan']

showing up notification error message invalid format date
    Element Text Should Be  xpath=//li[@class='alert__error-item']  Maaf, Format tanggal tidak dapat diterima. Coba format: DD/MM/YYYY


***Test case***
UPG-001-Pengaturan-004 user can be to see Menu Pengaturan-Ubah Profil-invalid format date
    login
    Dropdown User Account
    click Menu Pengaturan
    showing up form ubah profile
    Fill in the form data invalid format date(Date of birth)
    showing up notification error message invalid format date

    

    
  

