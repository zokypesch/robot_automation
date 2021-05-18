***setting***

Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot

# 
| Variables | ../var/profile.py

Test Setup      Setup Browser

Test Teardown   Close browser

***Keyword***

***Test case***
# Descriptiion : I want to search article with specific topic and read the first result.
# I click one tag related with article than the article open
S-001-Success-001
        Search a Topic
        Read Random Article
        Read Random Tag
