@E2E-ask
Feature: E2E

#  @screenshot
#  Scenario: take a screenshot
#    Given I open url "http://ask-stage.portnov.com"
#    Then I wait for 3 sec
#    And I take screenshot
#    Then I wait for 3 sec

  @registration
  Scenario: Registering new user
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//a[@href='#/registration']"
    Then I wait for 2 sec
    Then I type "Bill" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "West" into element with xpath "//input[@formcontrolname='lastName']"
    Then I type "bill1.west@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "123456" into element with xpath "//input[@formcontrolname='group']"
    Then I type "123Qwerty" into element with xpath "//input[@formcontrolname='password']"
    Then I type "123Qwerty" into element with xpath "//input[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I confirm email address "bill1.west@gmail.com"
    Then I wait for 1 sec

  @ask-creatingNewQuiz
  Scenario: Creating new single choice question quiz
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//a[@href='/#/quizzes']" to be present
    Then I wait for 2 sec
    Then I click on element with xpath "//a[@href='/#/quizzes']"
    Then I wait for 2 sec
    Then I wait for element with xpath "//a[@href='#/quiz-builder']" to be present
    Then I click on element with xpath "//a[@href='#/quiz-builder']"
    Then I wait for 2 sec
    Then I type "QuizNew1116" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]/.."
    Then I click on element with xpath "//*[contains(text(), 'Single-Choice')]/../.."
    Then I type "What is your name?" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Bill Le" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 1')]/../..//textarea"
    Then I type "Bill King" into element with xpath "//*[contains(text(), 'Q1')]/../../../..//label[contains(text(), 'Option 2')]/../..//textarea"
    Then I click on element with xpath "//*[contains(text(),'Option 1')]/../../../../../..//label"
    And I move question slider 3 step to the "right"
    Then I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(),'Save')]/.."
    Then I wait for 3 sec



#  @ask-creatingNewMultiQuiz
#  Scenario: Creating new multiple choice question quiz
#    Given I open url "http://ask-stage.portnov.com"
#    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
#    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
#    And I click on element with xpath "//button[@type='submit']"
#    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
#    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
#    And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
#    And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
#    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
#    And I type "Test quiz" into element with xpath "//input[@formcontrolname='name']"
#    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
#    And I click on element with xpath "//mat-radio-button[3]"
#    And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
#    And I wait for 1 sec
#    And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
#    And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
#    And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
#    And I create 5 options
#    And I choose 5 as correct option
#    Then I wait for 3 sec

  @ask-assigningQuiz
  Scenario: Assigning quiz to Student
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(), 'Assignments')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    Then I wait for 5 sec
    And  I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
    Then I click on element with xpath "//*[contains(text(), 'Create New Assignment')]/.."
    Then I wait for 3 sec
    Then I wait for element with xpath "//h4[contains(text(), 'Give Assignment')]" to be present
    Then I wait for 6 sec
    Then I click on element with xpath "//span[contains(text(),'All')]/../../.."
    Then I wait for element with xpath "//*[@value='ALL']/../../.." to be present
    Then I scroll to the element with xpath "//span[contains(text(),'123456')]" with offset 3
    Then I wait for 3 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-pane']//*[contains(text(),'123456')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]/../../div[2]"
    Then I wait for element with xpath "//div[@class='cdk-overlay-container']/div[2]" to be present
    Then I scroll to the element with xpath "//span[contains(text(),'QuizNew1116')]" with offset 2
    Then I click on element with xpath "//span[contains(text(),'QuizNew1116')]"
    Then I click on element with xpath "//div/div[contains(string(),'Bill West')]/../mat-pseudo-checkbox"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 5 sec

  @ask-deleteUser
  Scenario: Deleting new User
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I click on element with xpath "//h5[contains(text(),'s Management')]/.."
    Then I wait for 2 sec
    Then I scroll to the element with xpath "//h4[contains(text(),'Bill West')]/.." with offset 2
    Then I click on element with xpath "//h4[contains(text(),'Bill West')]/.."
    Then I wait for element with xpath "//td[contains(text(),'Email')]/../../tr[2]" to be present
    Then element with xpath "//td[contains(text(),'Email')]/../td[2]" should contain text "bill1.west@gmail.com"
    Then I click on element with xpath "//*[contains(text(),'settings')]/../../span"
    Then I wait for element with xpath "//*[contains(text(), 'delete')]/../../../.." to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//*[contains(text(), 'delete')]/.."
    Then I wait for 3 sec
    Then I wait for element with xpath "//ac-modal-confirmation/h1[contains(text(),'Confirmation')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Delete')]/.."
    Then I wait for 2 sec

  @ask-deleteQuiz
  Scenario: Deleting new Quiz
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I scroll to the element with xpath "//*[contains(text(),'QuizNew1116')]/../.." with offset 2
    Then I click on element with xpath "//*[contains(text(),'QuizNew1116')]/../.."
    Then I wait for element with xpath "//*[contains(text(),'QuizNew1116')]/../../..//*[contains(text(),'Delete')]/.." to be present
    Then I click on element with xpath "//*[contains(text(),'QuizNew1116')]/../../..//*[contains(text(),'Delete')]/.."
    Then I wait for element with xpath "//mat-dialog-container" to be present
    Then I click on element with xpath "//mat-dialog-container/..//button/span[contains(text(),'Delete')]/.."
    Then I wait for 2 sec
    










