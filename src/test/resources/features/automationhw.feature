@automationhw
  Feature: Smoke steps

    @registration
    Scenario: Test scenario - New user registration 1
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Signup')]"
      Then element with xpath "//h2[contains(text(),'New User Signup!')]" should be displayed
      Then I type "alicepro" into element with xpath "//input[@placeholder='Name']"
      Then I type "alicepro@gmail.com" into element with xpath "//input[@data-qa='signup-email']"
      Then I click on element with xpath "//button[contains(text(),'Signup')]"
      Then element with xpath "//b[contains(text(),'Enter Account Information')]" should be displayed
      Then I click on element with xpath "//input[@value='Mrs']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//select[@id='days']"
      Then I click on element with xpath "//option[@value='17']"
      Then I click on element with xpath "//select[@id='months']"
      Then I click on element with xpath "//option[contains(text(),'May')]"
      Then I click on element with xpath "//select[@id='years']"
      Then I click on element with xpath "//option[@value='1982']"
      Then I wait for 1 sec
      Then I click on element with xpath "//input[@id='newsletter']"
      Then I click on element with xpath "//input[@id='optin']"
      Then I type "arthy" into element with xpath "//input[@id='first_name']"
      Then I type "jk" into element with xpath "//input[@id='last_name']"
      Then I type "portnov" into element with xpath "//input[@id='company']"
      Then I type "Apt#112233" into element with xpath "//input[@id='address1']"
      Then I type "Imperial Ave" into element with xpath "//input[@id='address2']"
      Then I wait for 2 sec
      Then I click on element with xpath "//select[@id='country']"
      Then I click on element with xpath "//option[contains(text(),'United States')]"
      Then I type "California" into element with xpath "//input[@id='state']"
      Then I type "Cupertino" into element with xpath "//input[@id='city']"
      Then I type "95014" into element with xpath "//input[@id='zipcode']"
      Then I type "1112223344" into element with xpath "//input[@id='mobile_number']"
      Then I click on element with xpath "//button[contains(text(),'Create Account')]"
      Then element with xpath "//b[contains(text(),'Account Created!')]" should be displayed
      Then I accept alert
      Then element with xpath "//b[contains(text(),'arthy')]" should be displayed
      Then I click on element with xpath "//a[contains(text(),'Delete Account')]"
      Then element with xpath "//b[contains(text(),'Account Deleted!')]" should be displayed
      Then I click on element with xpath "//a[contains(text(),'Continue')]"
      Then I wait for 2 sec

    @invalid-login
    Scenario: Test scenario Invalid email login 3 ok
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Signup')]"
      Then element with xpath "//h2[contains(text(),'Login to your account')]" should be displayed
      Then I type "artz@gmail.com" into element with xpath "//input[@data-qa='login-email']"
      Then I type "aaaa1111" into element with xpath "//input[@data-qa='login-password']"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      And element with xpath "//p[contains(text(),'Your email or password is incorrect!')]" should be displayed
      Then I wait for 2 sec

    @contact-us
    Scenario: Test scenario Contact us form 6
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Contact us')]"
      Then element with xpath "//h2[contains(text(),'Get In Touch')]" should be displayed
      Then I type "arthy" into element with xpath "//input[@placeholder='Name']"
      Then I type "arthy@gmail.com" into element with xpath "//input[@placeholder='Email']"
      Then I type "Shipping info" into element with xpath "//input[@placeholder='Subject']"
      Then I type "Hi, I need shipping info of my purchase order " into element with xpath "//textarea[@id='message']"
#      Then I click on element with xpath "//input[@type='file']"
      Then I wait for 1 sec
      Then I click on element with xpath "//input[@name='submit']"
      Then I wait for 1 sec
#      Then I switch to iframe with xpath ""
      Then I click on element with xpath "//button[@type='ok']"
      Then element with xpath "//div[contains(text(),'Success! Your details have been submitted successfully.')][1]" should be displayed
      Then I wait for 1 sec
      Then I click on element with xpath "//span[contains(text(),'Home')]"
      Then I click on element with xpath "//a[@class='btn btn-success']"
      Then I should see page title as "Automation Exercise"

    @test-cases-page
    Scenario: Test scenario Verify test cases page 7 ok
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Test Cases')]"
      Then I wait for 2 sec
      Then element with xpath "//b[contains(text(),'Test Cases')]" should be displayed
      Then I wait for 1 sec

    @all-products
    Scenario: Test scenario All Products 8
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Products')]"
      Then element with xpath "//h2[@class='title text-center']" should be displayed
      Then element with xpath "//h2[contains(text(),'Category')]" should be displayed
      Then I mouse over element with xpath "(//div[@class='product-image-wrapper'])[1]"
      Then I click on element with xpath "(//a[contains(text(),'View Product')])[1]"
      Then element with xpath "(//div[@class='product-details'])[1]" should be displayed
      Then element with xpath "//h2[contains(text(),'Blue Top')]" should be displayed
      Then I wait for 1 sec

    @search-product
    Scenario: Test scenario Search Product 9
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Products')]"
      Then element with xpath "//h2[@class='title text-center']" should be displayed
      Then I wait for 2 sec
#      Then I click on element with xpath "//input[@id='search_product']"
      Then I type "top" into element with xpath "//input[@id='search_product']"
      Then I wait for 1 sec
      Then I click on element with xpath "//button[@id='submit_search']"
      Then I wait for 1 sec

    @add-to-cart
    Scenario: Test scenario Add Product to cart 12
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Products')]"
      Then element with xpath "//h2[@class='title text-center']" should be displayed
      Then element with xpath "//h2[contains(text(),'Category')]" should be displayed
      Then I mouse over element with xpath "(//div[@class='product-image-wrapper'])[1]"
      Then I click on element with xpath "(//a[contains(text(),'Add to cart')])[1]"
      Then I wait for 1 sec

    @add-review
    Scenario: Test scenario Add review 21
      Given I open url "https://automationexercise.com"
      Then I should see page title as "Automation Exercise"
      Then I click on element with xpath "//a[contains(text(),'Products')]"
      Then element with xpath "//h2[@class='title text-center']" should be displayed
      Then I wait for 1 sec
      Then I switch to default content
      Then I click on element with xpath "(//a[contains(text(),'View Product')])[1]"
      Then I wait for 1 sec

    @nop-register
    Scenario: Test scenario new registration
      Given I open url "https://nop-qa.portnov.com"
      Then I should see page title as "Your store. Home page title"
      Then I click on element with xpath "//a[contains(text(),'Register')]"
      Then element with xpath "//h1[contains(text(),'Register')]" should be displayed
      Then I click on element with xpath "//input[@id='gender-female']"
      Then I type "ajju" into element with xpath "//input[@id='FirstName']"
      Then I type "jk" into element with xpath "//input[@id='LastName']"
      Then I click on element with xpath "//*[contains(text(),'Day')]"
      Then I click on element with xpath "//*[contains(text(),'17')]"
      Then I click on element with xpath "//*[contains(text(),'Month')]"
      Then I click on element with xpath "//*[contains(text(),'May')]"
      Then I click on element with xpath "//*[contains(text(),'Year')]"
      Then I click on element with xpath "//*[contains(text(),'1982')]"
      Then I wait for 1 sec
      Then I type "ajujk@gmail.com" into element with xpath "//input[@id='Email']"
      Then I click on element with xpath "//input[@id='Newsletter']"
      Then I wait for 1 sec
      Then I type "abc123" into element with xpath "//input[@id='Password']"
      Then I type "abc123" into element with xpath "//input[@id='ConfirmPassword']"
      Then I click on element with xpath "//button[@id='register-button']"
      Then element with xpath "//div[contains(text(),'Your registration completed')]" should be displayed
      Then I click on element with xpath "//a[contains(text(),'Continue')]"
      Then element with xpath "//h2[contains(text(),'Welcome to our store')]" should be displayed
      Then I wait for 1 sec

    @nop-search
    Scenario: Test scenario new search
      Given I open url "https://nop-qa.portnov.com"
      Then I should see page title as "Your store. Home page title"
      Then I click on element with xpath "//input[@id='small-searchterms']"
      Then I type "nokia" into element with xpath "//input[@id='small-searchterms']"
      Then I click on element with xpath "//button[contains(text(),'Search')]"
      Then element with xpath "//h1[contains(text(),'Search')]" should be displayed
      Then I wait for 1 sec

    @social-media-logo
    Scenario: Test scenario social media logo
      Given I open url "https://nop-qa.portnov.com"
      Then I should see page title as "Your store. Home page title"
      Then I mouse over element with xpath "//a[contains(text(),'YouTube')]"
      Then I wait for 1 sec
      Then I click on element with xpath "//a[contains(text(),'YouTube')]"
      Then I wait for 1 sec
      Then I should see page title as "Your store. Home page title"
#      Then I should see page title as "nopCommerce - YouTube"
#      Then element with xpath "(//*[@id='text-container'])[1]" should be displayed
      Then I wait for 1 sec

    @social-media-logo-twitter
    Scenario: Test scenario social media logo twitter
      Given I open url "https://nop-qa.portnov.com"
      Then I should see page title as "Your store. Home page title"
      Then I mouse over element with xpath "//a[contains(text(),'Twitter')]"
      Then I wait for 1 sec
      Then I click on element with xpath "//a[contains(text(),'Twitter')]"
      Then I wait for 1 sec
      Then I should see page title as "Your store. Home page title"
#      Then I should see page title as "nopCommerce - YouTube"
#      Then element with xpath "(//*[@id='text-container'])[1]" should be displayed
      Then I wait for 1 sec

    @nop-add-product
    Scenario: Test scenario add product
      Given I open url "https://nop-qa.portnov.com"
      Then I should see page title as "Your store. Home page title"
      Then I click on element with xpath "//a[contains(text(),'Log in')]"
      Then I type "ajjujk@gmail.com" into element with xpath "//input[@id='Email']"
      Then I type "abc123!" into element with xpath "//input[@id='Password']"
      Then I click on element with xpath " //button[contains(text(),'Log in')]"
      Then I click on element with xpath "//a[contains(text(),'Electronics')]"
      Then I click on element with xpath "(//*[@title='Show products in category Cell phones'])[1]"
      Then I click on element with xpath "(//button[contains(text(),'Add to cart')])[3]"
      Then I wait for element with xpath "//p[contains(text(),'The product has been added to your')]/../.." to be present
      Then I click on element with xpath "//span[@title='Close']"
      Then I wait for 1 sec
      Then I click on element with xpath "//span[contains(text(),'Shopping cart')]"
      Then I wait for element with xpath "(//a[contains(text(),'Nokia Lumia 1020')])[1]" to be present
      Then I wait for 1 sec













