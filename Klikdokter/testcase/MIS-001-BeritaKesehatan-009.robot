***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***

***Test case***
MIS-001-BeritaKesehatan-007
        Login
        Menu Info Sehat Tab Berita Kesehatan
        Read Main Article
        Add Comment
        Logout
        
        
        
        



