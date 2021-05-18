***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot

Test Setup      Setup Browser

Test Teardown   Close browser

| Variables | ../var/profile.py
*** Variables ***


***Keyword***


***Test case***
S-001-Success-005
# Filter 1
        Search a Topic
        Filter Relevansi
        Filter Semua Kanal
        Filter From Date
        Button Filter Cari Article
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 2
        Filter Relevansi
        Filter Info Sehat
        Filter From Date
        Button Filter Cari Article
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 3
        Filter Relevansi
        Filter Lab
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 4
        Filter Relevansi
        Filter Photo
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 5
        Filter Relevansi
        Filter Specialist 
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 6
        Filter Relevansi
        Filter Video 
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      

        
        

