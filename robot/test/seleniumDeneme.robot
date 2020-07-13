*** Settings ***
Library    SeleniumLibrary

Suite Setup       Log    Suit calisiyor
Suite Teardown    Log    Suit Bitti
Test Setup        Log    Test calisiyor
Test Teardown     Log    Test bitti      

Default Tags    all    
*** Test Cases ***
Deneme
    [Tags]    first
    Log    bu yeni test    
   
QnbKrediBasvuru
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    Maximize Browser Window
    degerGir  
    Click Element   &{xpathButtons}[hemenBasvur]      
    Sleep           2    
    Close Browser
    Log    Test Bitti
    #Log    Makina = %{username} isletim sistemi= %{os}
    Set Tags    regression
    #Remove Tags    regression

*** Variables ***
${URL}    https://www.qnbfinansbank.com
@{DEGER}    50000    100000
&{xpathButtons}    hemenBasvur=xpath=//*[@id="ContentSection"]/section[1]/div[6]/div/div[3]/div[3]/a

*** Keywords ***
degerGir
    Input Text      name=loan-home-credit            @{DEGER}[0]