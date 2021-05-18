***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot


| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***

***Test case***
MIS-003-GayaHidup-001
        # Menu Info Sehat Tab Gaya Hidup
        # Read Main Article Gaya Hidup
        # SLEEP                           ${SLEEP}
        Menu Info Sehat Tab Gaya Hidup
        # ${frame}=document.getElementById("google_ads_iframe_/95250053/KLIKDOKTER_DESKTOP/HOMEPAGE/OTP_0").remove();
        # frame.parentNode.removeChild(frame);
        Read List Article Gaya Hidup
        # Read List Article Profil Sehat
        # SLEEP                           ${SLEEP}
        # Menu Info Sehat Tab Profil Kesehatan
        # Read Profil Sehat Selengkapnya



