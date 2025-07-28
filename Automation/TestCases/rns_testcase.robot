*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/rns_keywords.resource
Library     ../Resources/CustomKeywords/utilities.py
Library     BuiltIn
Library     Collections

*** Variables ***
${TestData}=     ${CURDIR}${/}..${/}TestData${/}rnstestdata.xlsx

*** Keywords ***


*** Test Cases ***
TC-ID-01 Verify user is able to login with valid username and password
    [Tags]    TC-ID-01
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-01
    Enter With Username And Password And Click On Login Button    ${login_data}
    Verify Home Page Is Visible After Login

TC-ID-02 Verify user is not able to login with invalid username and password
    [Tags]    TC-ID-02
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-02
    Enter With Username And Password And Click On Login Button    ${login_data}
    Verify User Is Unable Redirect To HomePage

TC-ID-03 Verify user is not able to login with empty username and password
    [Tags]    TC-ID-03
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-03
    Enter With Username And Password And Click On Login Button    ${login_data}
    Verify User Is Unable Redirect To HomePage

TC-ID-05 Verify user is able to view and click on BESTSELLER BOOKS on Navbar and redirect to BestSeller Books page
    [Tags]    TC-ID-05
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-05
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On BestSeller Link On Navigation Bar
    Verify BestSeller Container Section On Home PAge

TC-ID-06 Verify user is able to view and click on BLOG on Navbar and redirect to Latest Blogs page
    [Tags]    TC-ID-06
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-06
    Enter With Username And Password And Click On Login Button   ${login_data}
    Click On Blogs Link On Navigation Bar
    Verify Blogs Section On Home Page

TC-ID-07 Verify user is able to view and click on SUBSCRIBE on Navbar and redirect to Newsletter page
    [Tags]    TC-ID-07
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-07
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Subscribe Link On Navigation Bar
    Verify NewsLetter Section On Home Page

TC-ID-08 Verify user is able to view and click on LOGOUT on Navbar and redirect to Login page
    [Tags]    TC-ID-08
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-08
    Enter With Username And Password And Click On Login Button   ${login_data}
    Click On Logout On The Home Page
    Verify Login Page Is Visible After Logging Out

TC-ID-09 Verify user is able to view and click on SELL OLD BOOK on Navbar and redirect to Add Details page
    [Tags]    TC-ID-09
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-09
    Enter With Username And Password And Click On Login Button     ${login_data}
    Click On Sell Old Book On Home Page
    Verify Adding Sell Old Books Section

TC-ID-10 Verify user is able to view and click on "ABOUT US" on Login Navbar and redirect to "Know us" page
    [Tags]    TC-ID-10
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-10
    Verify Login Page Is Visible After Logging Out
    Click On About Us Link On Navigation Bar Of Login Page
    Verify About Us Page Contains Title As KnowUs

TC-ID-11 Verify user is able to view and click on CONTACT US on Navbar and redirect to Let's talk page
    [Tags]    TC-ID-11
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-11
    Verify Login Page Is Visible After Logging Out
    Click On Contact Us Link On Navigation Bar Of Login Page
    Verify Contact Us Page

TC-ID-12 Verify user is able to view and click on REGISTER on Navbar and redirect to Register page
    [Tags]    TC-ID-12
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-12
    Verify Login Page Is Visible After Logging Out
    Click On The Register Link Of Navigation Bar On Login Page
    Verify Register Page
    
TC-ID-13 Verify user is able to view and click on Register here hyperlink present at bottom of login page and redirect to Register page
    [Tags]    TC-ID-13
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-13
    Verify Login Page Is Visible After Logging Out
    Click On The Register HyperLink On Login Page
    Verify Register Page

TC-ID-14 Verify user is able to view and click on ABOUT US on Register Navbar and redirect to Know us page
    [Tags]    TC-ID-14
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-14
    Verify Login Page Is Visible After Logging Out
    Click On About Us Link On Navigation Bar Of Register Page
    Verify About Us Page Contains Title As KnowUs
    
TC-ID-15 Verify user is able to view and click on CONTACT US on Navbar and redirect to Let's talk page
    [Tags]    TC-ID-15
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-15
    Verify Login Page Is Visible After Logging Out
    Click On Contact Us Link On Navigation Bar Of Register Page
    Verify Contact Us Page

TC-ID-16 Verify user is able to view and click on REGISTER on Navbar and redirect to Register page
    [Tags]    TC-ID-16
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-16
    Verify Login Page Is Visible After Logging Out
    Click On The Register Link Of Navigation Bar On Register Page
    Verify Register Page

TC-ID-17 Verify user is able to Register with all data
    [Tags]    TC-ID-17
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-17
    Verify Login Page Is Visible After Logging Out
    Click On The Register Link Of Navigation Bar On Login Page
    Enter The Registration Details    ${login_data}
    Click On Register Button
    Verify Registration Done Successfully


TC-ID-18 Verify user should not able to Register with empty data
    [Tags]    TC-ID-18
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-18
    Verify Login Page Is Visible After Logging Out
    Click On The Register Link Of Navigation Bar On Login Page
#    Enter The Registration Details    ${login_data}
    Click On Register Button
    Verify Invalid Registration Message

TC-ID-19 Verify user is able to view and click on Login here hyperlink present at bottom of register page and redirect to Login page
    [Tags]    TC-ID-19
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-19
    Verify Login Page Is Visible After Logging Out
    Click On The Register HyperLink On Login Page
    Click On Login Hyperlink On Register Page
    Verify Login Page Is Visible After Logging Out

TC-ID-20 Verify user is able to view ADD TO CART button on home page
    [Tags]    TC-ID-20
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-20
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Verify Add To Cart Button Is Visible On Home Page
    
TC-ID-21 Verify user is able to click ADD TO CART button on home page
    [Tags]    TC-ID-21
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-21
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Clicking On Add To Cart Button Redirects To Cart Page

TC-ID-22 Verify user is redirect to Add To Cart page after click on ADD TO CART button on home page
    [Tags]    TC-ID-22
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-22
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Clicking On Add To Cart Button Redirects To Cart Page

TC-ID-23 Verify user is able to view element on Add To Cart page after click on ADD TO CART button on home page
    [Tags]    TC-ID-23
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-23
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Clicking On Add To Cart Button Redirects To Cart Page
    Verify All UI Elements Of Add To Cart Page

TC-ID-24 Verify user is able to view Continue Shopping button on Add To Cart page
    [Tags]    TC-ID-24
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-24
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Clicking On Add To Cart Button Redirects To Cart Page


TC-ID-25 Verify user is able to click Continue Shopping button on Add To Cart page
    [Tags]    TC-ID-25
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-25
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Clicking On Add To Cart Button Redirects To Cart Page
    Click On Continue Shopping Button On Add To Cart Page
    Verify Clicking On Continue Shopping Redirects To Home Page

TC-ID-26 Verify user is unable to change textfield on Add To Cart page
    [Tags]    TC-ID-25
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-25
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Text Fields On Add To Cart Page Are Not clickable

TC-ID-27 Verify user is able to view Buy Now button on Add To Cart page
    [Tags]    TC-ID-27
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-27
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Buy Now Button On Add To Cart Page

TC-ID-28 Verify user is able to click Buy Now button on Add To Cart page
    [Tags]    TC-ID-28
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-28
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Buy Now Button On Add To Cart Page
    Click On Buy Now Button On Add To Cart Page
    Verify Clicking On Buy Now Redirects To Billing Page

TC-ID-29 Verify user is able to view Cancel button on Add To Cart page
    [Tags]    TC-ID-29
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-29
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Cancel Button On Add To Cart Page


TC-ID-30 Verify user is able to click "Cancel" button on Add To Cart page
    [Tags]    TC-ID-30
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-30
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Add To Cart Button On Home Page
    Verify Buy Now Button On Add To Cart Page
    Click On Cancel Button On Add To Cart Page
    Verify Clicking On Cancel Button Redirects To Home Page

TC-ID-31 Verify user is able to view elements on Add Details page after click on SELL OLD BOOK
    [Tags]    TC-ID-31
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-31
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Sell Old Book On Home Page
    Verify All UI Elements Of Add Details Page

TC-ID-32 Verify user is able to click elements on Add Details page
    [Tags]    TC-ID-32
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-32
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Sell Old Book On Home Page
    Verify All UI Elements Of Add Details Page are Clickable

TC-ID-33 Verify user is unable to add book in Add Details page by keeping any field empty
    [Tags]    TC-ID-33
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-33
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Sell Old Book On Home Page
    Verify All UI Elements Of Add Details Page are Clickable
    Verify Add Button Functionality On Add Details Page
    Wait Until Page Contains    Add Details

TC-ID-34 Verify user is able to add book in Add Details page by filling all fields
    [Tags]    TC-ID-34
    Open The Chrome Browser
    ${login_data}=    Fetch Testdata By Id    ${TestData}    TC-ID-34
    Verify Login Page Is Visible After Logging Out
    Enter With Username And Password And Click On Login Button    ${login_data}
    Click On Sell Old Book On Home Page
    Verify All UI Elements Of Add Details Page are Clickable
    Verify Add Button Functionality On Add Details Page