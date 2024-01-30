@predefined
Feature: Smoke steps

#  @predefined1
#  @regression
#  Scenario: Predefined steps for Google
#    Given I open url "https://google.com"
#    Then I should see page title as "Google"
#    Then I type "Cucumber" into element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    # Then I wait for 2 sec
#    Then I wait for element with xpath "//*[@id='res']" to be present
#    Then I should see page title contains "- Google Search"
#    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @test-scenario-s-s-endtoend1
  Scenario: Test scenario [T][S] E2E - Submission Status
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//h3[contains(text(),'arthy vicky')]/.." to be present
    Then element with xpath "//h3[contains(text(),'arthy vicky')]/.." should be displayed
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "(//span[contains(text(),'Select Quiz To Assign')])[1]"
    Then I click on element with xpath "//span[contains(text(),'SQA#1')]/.."
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'AA22')]/../..//*[@class='mat-pseudo-checkbox']"
    Then I click on element with xpath "(//button[@type='submit'])[1]"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Log Out')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Log Out')]/.."
    Then I wait for 1 sec
    Then I type "aarthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    And element with xpath "//h3[contains(text(),'aarthy vikram')]/.." should be displayed
    Then I click on element with xpath "//h5[contains(text(),'My Assignment')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Go To Assessment')]/.."
    Then I wait for element with xpath "(//div[@class='mat-radio-inner-circle'])[1]/../.." to be present
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[1]/../.."
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[3]/../."
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[5]/.."
    Then I wait for element with xpath "//span[contains(text(),'Submit My Answers')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Ok')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Ok')]/.."
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    Then I wait for element with xpath "//th[contains(text(),'Status')]" to be present
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Details')]/.."
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be displayed
    Then I wait for 1 sec

  @test-scenario-u-g-valid
  Scenario: Test scenario [T] Valid Change of User's Group
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Use')]"
    Then I click on element with xpath "//div[contains(text(),'Students')]"
    Then I click on element with xpath "//h4[contains(text(),'vikram')]"
    Then I click on element with xpath "(//span[@class='mat-button-wrapper'])[1]"
    Then I wait for 2 sec
    Then element with xpath "//div[@role='menu']" should be displayed
    Then I click on element with xpath "(//button/mat-icon[contains(text(),'group')])[1]/.."
    Then element with xpath "//*[@formcontrolname='name']" should be displayed
    Then I clear element with xpath "//*[@formcontrolname='name']"
    Then I wait for 1 sec
    Then I type "AA22" into element with xpath "//*[@formcontrolname='name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//td[contains(text(),'AA22')]" should be displayed
    Then I wait for 2 sec

  @test-scenario-u-g-whitespaces
  Scenario: Test scenario [T] User's Group - White Spaces
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Use')]"
    Then I click on element with xpath "//div[contains(text(),'Students')]"
    Then I wait for element with xpath "(//h4[contains(text(),'Ajju')])[1]/.." to be present
    Then I click on element with xpath "(//h4[contains(text(),'Ajju')])[1]/.."
    Then I click on element with xpath "(//span[@class='mat-button-wrapper'])[1]"
    Then I wait for 2 sec
    Then element with xpath "//div[@role='menu']" should be displayed
    Then I click on element with xpath "(//mat-icon[contains(text(),'group')])[3]/../.."
    Then element with xpath "//*[@formcontrolname='name']" should be displayed
    Then I clear element with xpath "//*[@formcontrolname='name']"
    Then I wait for 1 sec
    Then I type "65 32" into element with xpath "//*[@formcontrolname='name']"
    Then I click on element with xpath "//span[contains(text(),'Change')]"
    Then I wait for 1 sec
    Then element with xpath "//td[contains(text(),'65 32')]" should be displayed
    Then I wait for 2 sec

  @test-scenario-s-s-grading
  Scenario: Test scenario [T] Submission Status - Grading Assignments
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then element with xpath "//div[contains(text(),'For Grade')]" should be displayed
    Then I click on element with xpath "//div[contains(text(),'For Grade')]"
    Then I click on element with xpath "(//span[contains(text(),'Grade')])[1]/.."
    Then element with xpath "//div[contains(text(),'ASSESSMENT FAILED')]" should be displayed
    Then I wait for 2 sec

  @test-scenario-s-s-automaticgrade
  Scenario: Test scenario [T] Submission Status - Automatically Graded Assignments
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then element with xpath "//div[contains(text(),'Automatically Graded')]" should be displayed
    Then I click on element with xpath "//div[contains(text(),'Automatically Graded')]"
    Then I wait for element with xpath "//th[contains(text(),'Status')]" to be present
    Then I wait for 1 sec
    Then I click on element with xpath "(//span[contains(text(),'Review')])[1]"
    Then element with xpath "//div[contains(text(),'ASSESSMENT FAILED')]" should be displayed
    Then I wait for 2 sec

  @test-scenario-s-s-review
  Scenario: Test scenario [T] Submission Status - Reviewed Assignments
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    Then I click on element with xpath "//div[contains(text(),'Reviewed')]"
    Then I wait for element with xpath "//th[contains(text(),'Status')]" to be present
    Then I wait for 1 sec
    Then I click on element with xpath "(//span[contains(text(),'Review')])[1]"
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be displayed
    Then I wait for 2 sec

  @test-scenario-submissionstatus
  Scenario: Test scenario [S] Submission Status
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "aarthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    Then I wait for element with xpath "//th[contains(text(),'Status')]" to be present
    Then I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Details')]/.."
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be displayed
    Then I wait for 2 sec

  @test-scenario-s-s-student-submitandview
  Scenario: Test scenario [S] Submit Assignment & View Submission Status
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "aarthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    And element with xpath "//h3[contains(text(),'aarthy vikram')]/.." should be displayed
    Then I click on element with xpath "//h5[contains(text(),'My Assignment')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Go To Assessment')]/.."
    Then I wait for element with xpath "(//div[@class='mat-radio-inner-circle'])[1]/../.." to be present
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[1]/../.."
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[3]/../."
    Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[5]/.."
    Then I wait for element with xpath "//span[contains(text(),'Submit My Answers')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Submit My Answers')]/.."
    Then I wait for element with xpath "//span[contains(text(),'Ok')]/.." to be present
    Then I click on element with xpath "//span[contains(text(),'Ok')]/.."
    Then I wait for 2 sec
    Then I click on element with xpath "//h5[contains(text(),'My Grades')]"
    Then I wait for element with xpath "//th[contains(text(),'Status')]" to be present
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Details')]/.."
    Then element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]" should be displayed
    Then I wait for 1 sec

  @Registration
  Scenario: Test Scenario - Valid Registration
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then I type "Jon" into element with xpath "//input[@placeholder='First Name']"
    Then I type "Shery" into element with xpath "//input[@placeholder='Last Name']"
    Then I type "faketestid1@gmail.com" into element with xpath "//input[@placeholder='Email']"
    Then I type "111222" into element with xpath "//input[@placeholder='Group Code']"
    Then I type "abc12345" into element with xpath "//input[@placeholder='Password']"
    Then I type "abc12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then I confirm user account with email "faketestid1@gmail.com"
    Then I wait for 3 sec

  @test-scenario-quiz-itertaions
  Scenario: Test scenario [T] Create Quiz with Iterations
    Given I open url "http://ask-stage.portnov.com"
    Then I type "arthy123@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "portnov@1" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "Test quiz" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    And I click on element with xpath "//mat-radio-button[3]"
    And I wait for 2 sec
    And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
    And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
    And I create 5 options
    And I choose 5 as correct option
#    And I mouse over element with xpath "(//div[@class='mat-slider-thumb'])[1]"
#    And I scroll to the element with xpath "(//div[@class='mat-slider-thumb'])[1]" with offset 2
#    And I scroll to the element with xpath "(//div[@class='mat-slider-thumb'])[1]/../../.." with offset 2
    Then I wait for 3 sec