*** Settings ***
Library          SeleniumLibrary
Library          BuiltIn
Variables        ../PageObjects/login_page_locators.py
Variables        ../PageObjects/homepage_locators.py
Variables        ../PageObjects/register_page_locators.py
Variables        ../PageObjects/billing_page_locators.py

*** Variables ***
${url}=        http://127.0.0.1:8000/login/?next=/
${browser}=    chrome

*** Keywords ***
Open The Chrome Browser
    Open Browser       ${url}        ${browser}
    Maximize Browser Window
    Page Should Contain    Login Page

Enter With Username And Password And Click On Login Button
    [Arguments]    ${my_dict}
    ${my_dict}=     Create Dictionary    &{my_dict}
    Wait Until Page Contains        Login Page
    Sleep    5s
    Page Should Contain    Login Page

    Wait Until Element Is Visible    ${username}
    Input Text        ${username}    ${my_dict.username}
    Input Password    ${password}    ${my_dict.password}
    Click Button      ${login_btn}

Click On BestSeller Link On Navigation Bar
    Click Element    ${bestseller_nav}
    
Click On Blogs Link On Navigation Bar
    Page Should Contain Element    ${blog_nav}
    Click Element    ${blog_nav}

Click On Subscribe Link On Navigation Bar
    Page Should Contain Element    ${subscribe_nav}
    Click Element    ${subscribe_nav}

Click On Logout On The Home Page
    Wait Until Element Is Visible    ${logout_nav}    timeout=10s
    Click Element    ${logout_nav}

Click On Sell Old Book On Home Page
    Wait Until Element Is Visible    ${sell_old_book_nav}    timeout=10s
    Click Element        ${sell_old_book_nav}
    
Click On About Us Link On Navigation Bar Of Login Page
    Wait Until Element Is Visible    ${about_us_link}    timeout=10s
    Click Element    ${about_us_link}

Click On About Us Link On Navigation Bar Of Register Page
    Wait Until Element Is Visible    ${about_us_link}    timeout=10s
    Click Element    ${about_us_link}

Click On Contact Us Link On Navigation Bar Of Login Page
    Wait Until Element Is Visible    ${contact_us_link}
    Click Element    ${contact_us_link}

Click On Contact Us Link On Navigation Bar Of Register Page
    Wait Until Element Is Visible    ${contact_us_link}
    Click Element    ${contact_us_link}

Click On The Register Link Of Navigation Bar On Login Page
    Wait Until Element Is Visible    ${register_link}
    Click Element    ${register_link}

Click On The Register HyperLink On Login Page
    Wait Until Element Is Visible    ${register_hyperlink}    timeout=10s
    Click Element    ${register_hyperlink}

Click On The Register Link Of Navigation Bar On Register Page
    Wait Until Element Is Visible    ${register_link}
    Click Element    ${register_link}

Enter The Registration Details
    [Arguments]    ${my_dict}
    ${my_dict}=    Create Dictionary    &{my_dict}
    
    Wait Until Element Is Visible    ${first_name}        timeout=10s
    Input Text    ${first_name}    ${my_dict.first_name}
    Wait Until Element Is Visible    ${last_name}        timeout=10s
    Input Text    ${last_name}    ${my_dict.last_name}
    Wait Until Element Is Visible    ${register_user_name}        timeout=10s
    Input Text    ${register_user_name}    ${my_dict.new_user_name}
    Wait Until Element Is Visible    ${register_password}    timeout=10s
    Input Text    ${register_password}    ${my_dict.new_password}
    Wait Until Element Is Visible    ${confirm_password}    timeout=10s
    Input Text    ${confirm_password}    ${my_dict.confirm_password}

Click On Register Button
    Scroll Element Into View    ${register_btn}
    Wait Until Element Is Visible    ${register_btn}    timeout=10s
    Click Button    ${register_btn}

Click on Login Hyperlink On Register Page
    Scroll Element Into View    ${login_hyperlink}
    Wait Until Element Is Visible    ${login_hyperlink}
    Click Element    ${login_hyperlink}

Click On Add To Cart Button On Home Page
    Sleep    2s
    Scroll Element Into View    ${add_to_cart}
    Click Element    ${add_to_cart}

Click On Continue Shopping Button On Add To Cart Page
    Wait Until Element Is Visible    ${continue_shopping_btn}    timeout=10s
    Click Element    ${continue_shopping_btn}

Click On Buy Now Button On Add To Cart Page
    Wait Until Element Is Visible    ${buy_now_add_to_cart_btn}    timeout=10s
    Click Element    ${buy_now_add_to_cart_btn}

Click On Cancel Button On Add To Cart Page
    Scroll Element Into View    ${cancel_btn}
    Wait Until Element Is Visible    ${cancel_btn}
    Click Element    ${cancel_btn}
    





    
#nav
Verify Home Page Is Visible After Login
    Wait Until Element Is Visible    ${buy_now}    timeout=10s
    Page Should Contain Element    ${buy_now}
    
Verify User Is Unable Redirect To HomePage
    Page Should Contain    User does not exist

Verify BestSeller Container Section On Home Page
    Wait Until Element Is Visible    ${bestseller_book_container}    timeout=10s
    Page Should Contain Element    ${bestseller_book_container}

Verify Blogs Section On Home Page
    Wait Until Element Is Visible    ${latest_blogs_container}    timeout=10s
    Page Should Contain Element    ${latest_blogs_container}

Verify NewsLetter Section On Home Page
    Wait Until Element Is Visible    ${newsletter_container}
    Page Should Contain Element    ${newsletter_container}
    
Verify Login Page Is Visible After Logging Out
    Wait Until Page Contains    Login Page
    Page Should Contain Element    ${login_btn}
    
Verify Adding Sell Old Books Section
    Wait Until Page Contains    Add Details    
    
Verify About Us Page Contains Title As KnowUs
    Page Should Contain     Know US
    Page Should Contain    About Us

Verify Contact Us Page
    Page Should Contain    Let's_talk
    Page Should Contain    Visit one of our agency locations or contact us today

Verify Register Page
    Page Should Contain    Register
    Wait Until Element Is Visible    ${first_name}    timeout=10s

Verify Registration Done Successfully
    Wait Until Element Is Visible    ${login_btn}
    Page Should Contain    Login Page

Verify Invalid Registration Message
    Wait Until Element Is Visible    ${first_name}
    Page Should Contain    Register

Verify Clicking On Add To Cart Button Redirects To Cart Page
    Wait Until Element Is Visible    ${continue_shopping_btn}
    Page Should Contain Element    ${continue_shopping_btn}

Verify Add To Cart Button Is Visible On Home Page
    Wait Until Element Is Visible    ${add_to_cart}
    Page Should Contain Element    ${add_to_cart}

Verify All UI Elements Of Add To Cart Page
    Wait Until Element Is Visible    ${continue_shopping_btn}
    Page Should Contain Element    ${continue_shopping_btn}
    Wait Until Element Is Visible    ${buy_now_add_to_cart_btn}
    Page Should Contain Element    ${buy_now_add_to_cart_btn}
    Wait Until Element Is Visible    ${cancel_btn}
    Page Should Contain Element    ${cancel_btn}
    Page Should Contain    Book Name
    Page Should Contain    Amount
    Page Should Contain    Description

Verify Clicking On Continue Shopping Redirects To Home Page
    Wait Until Element Is Visible    ${bestseller_nav}
    Page Should Contain Element    ${bestseller_nav}

Verify Text Fields On Add To Cart Page Are Not Clickable
    Wait Until Element Is Visible    ${uneditable_locator}

Verify Buy Now Button On Add To Cart Page
    Wait Until Element Is Visible    ${buy_now_add_to_cart_btn}
    Page Should Contain Element    ${buy_now_add_to_cart_btn}

Verify Clicking On Buy Now Redirects to Billing Page
    Wait Until Element Is Visible    ${billing_page_title}
    Page Should Contain Element    ${billing_page_title}
    
Verify Clicking On Cancel Button Redirects To Home Page
    Wait Until Element Is Visible    ${buy_now}
    Page Should Contain     READ N SWAP

Verify Cancel Button On Add To Cart Page
    Scroll Element Into View    ${cancel_btn}
    Wait Until Element Is Visible    ${cancel_btn}
    Page Should Contain Element    ${cancel_btn}

Verify All UI Elements Of Add Details Page
    Wait Until Element Is Visible    ${sell_add_button}
    Page Should Contain Element    ${sell_add_button}
    Wait Until Element Is Visible    ${sell_cancel_button}
    Page Should Contain Element    ${sell_cancel_button}
    Page Should Contain    Add Details

Verify All UI Elements Of Add Details Page are Clickable
    Wait Until Element Is Visible    ${sell_add_button}
    Click Element    ${sell_book_name}
    Click Element    ${sell_book_description}
    Click Element    ${sell_book_price}
    Click Element    ${sell_purchase_date}
#    Choose File    ${sell_upload_cover_page}

Verify Add Button Functionality On Add Details Page
    Scroll Element Into View    ${sell_add_button}
    Click Button    ${sell_add_button}

#Enter The Sell Book Details
#    [Arguments]    ${my_dict}
#    ${my_dict}=    Create Dictionary    &{my_dict}
#
#    Wait Until Element Is Visible    ${sell_book_name}        timeout=10s
#    Input Text    ${sell_book_name}    ${my_dict.sell_book_name}
#    Wait Until Element Is Visible    ${sell_book_price}        timeout=10s
#    Input Text    ${sell_book_price}    ${my_dict.sell_book_price}
#    Wait Until Element Is Visible    ${register_user_name}        timeout=10s
#    Input Text    ${register_user_name}    ${my_dict.new_user_name}
#    Wait Until Element Is Visible    ${register_password}    timeout=10s
#    Input Text    ${register_password}    ${my_dict.new_password}
#    Wait Until Element Is Visible    ${confirm_password}    timeout=10s
#    Input Text    ${confirm_password}    ${my_dict.confirm_password}