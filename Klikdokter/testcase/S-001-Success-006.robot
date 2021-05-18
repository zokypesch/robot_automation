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
S-001-Success-006
# Filter 1
        Search a Topic
        Filter Popular
        Filter Semua Kanal
        Filter From Date
        Button Filter Cari Article
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 2
        Filter Popular
        Filter Info Sehat
        Filter From Date
        Button Filter Cari Article
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 3
        Filter Popular
        Filter Lab
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 4
        Filter Popular
        Filter Photo
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 5
        Filter Popular
        Filter Specialist 
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      
# Filter 6
        Filter Popular
        Filter Video 
        Filter From Date
        Button Filter Cari Article     
        ${found}=              Get Element Count     xpath=//div[@class='articles--iridescent-list']
        ${notfound}=              Get Element Count     xpath=//div[@class='search-not-found']
        Run Keyword If          ${found}==${1} and ${notfound}==${0}          Article Found     ELSE IF         ${found}==${0} and ${notfound}==${1}    Article Not Found      

        
        

