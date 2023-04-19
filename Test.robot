*** settings ***


Library   SeleniumLibrary

*** variables ***

*** Test Cases ***
com
This sample testcase


    Open Browser        https://demowebshop.tricentis.com/register      firefox
#     Open Browser    https://amazon.com    firefox


    Wait Until Element Is Visible   xpath:/html/body/div[4]/div[1]/div[2]/ul[1]/li[2]/a
    Mouse Over   xpath:/html/body/div[4]/div[1]/div[2]/ul[1]/li[2]/a
    Wait Until Element Is Visible    xpath:/html/body/div[4]/div[1]/div[2]/ul[1]/li[2]/ul/li[1]/a
    Click Element   xpath:/html/body/div[4]/div[1]/div[2]/ul[1]/li[2]/ul/li[1]/a
    Click Element   xpath:/html/body/div[4]/div[1]/div[4]/div[2]/div[2]/div[2]/div[3]/div[1]/div/div[2]/div[3]/div[2]/input
    Wait Until Element Is Visible   xpath:(//input[@name='product_attribute_72_5_18'])
    Page Should Contain Radio Button    xpath:(//input[@name='product_attribute_72_5_18'])
    Select Radio Button     product_attribute_72_5_18       52
    Page should contain Radio Button    xpath:(//input[@name='product_attribute_72_6_19'])
    Select Radio Button     product_attribute_72_6_19       91
    Page Should Contain Checkbox    xpath:(//input[@name='product_attribute_72_8_30'])
    Select Checkbox     xpath:(//input[@name='product_attribute_72_8_30'])
#    Select Checkbox     product_attribute_72_8_30
    Page Should Contain Element   xpath://*[@id="addtocart_72_EnteredQuantity"]
#    Wait Until Element Is Visible     xpath://*[@id="addtocart_72_EnteredQuantity"]
    Input Text      xpath://*[@id="addtocart_72_EnteredQuantity"]   5
    Click Element   xpath://input[@id='add-to-cart-button-72']
    #Wait Until Element Is Visible   xpath://*[@id="addtocart_75_EnteredQuantity"]

    #Input Text      xpath://*[@id="addtocart_75_EnteredQuantity"]   5
    #Click Element   xpath://*[@id="topcartlink"]/a/span[1]
#    sleep   5s

    Click Element   xpath://*[@id="add-to-cart-button-72"]
     Sleep   3s
    click Element   xpath://*[@id="topcartlink"]/a/span[1]
    Sleep   3s
    #Wait Untill Element is visible  xpath:/html/body/div[4]/div[1]/div[4]/div/div/div[2]/div/form/table/tbody/tr[2]/td[2]/img
    Page Should Contain Checkbox     xpath://input[@name='removefromcart']
    Select Checkbox       removefromcart
    Page Should Contain Element     xpath:/html/body/div[4]/div[1]/div[4]/div/div/div[2]/div/form/table/tbody/tr/td[5]/input
    #Input Text      itemquantity3109198     2
    Select From List By Label       //*[@id="CountryId"]    Canada
    Sleep 5
    Close Browser




*** keywords ***
