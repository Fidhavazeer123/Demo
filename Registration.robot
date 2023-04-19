*** settings ***

Library   SeleniumLibrary


*** variables ***

*** Test Cases ***
sample testcase
    Open Browser  https://demowebshop.tricentis.com/register  firefox
    Sleep   3s

    Page Should Contain Radio Button    xpath://input[@id='gender-male']

    Select Radio Button    Gender   M
    Input Text      FirstName   python
    Input Text      LastName    test
    Input Text      Email       testiiuuitytri678@gmail.com
    Input Password      Password    123456
    Input Password      ConfirmPassword     123456

    #Click Element       xpath://*[@id="register-button"]

    #Click Element       xpath://input[@id='register-button']


    Click Element       xpath://input[@name='register-button']
    Sleep   10s

    Close Browser



*** keywords ***
