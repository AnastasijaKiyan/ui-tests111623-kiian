@background-ask
  Feature: Background

    Background: Teacher Login
    Given I open url "http://ask-stage.portnov.com"
    Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec

    @ask-creatingNewMultiQuiz
    Scenario: Creating new multiple choice question quiz
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "Test1 quiz" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    And I click on element with xpath "//mat-radio-button[3]"
    And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
    And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
    And I create 5 options
    And I choose 5 as correct option
    Then I wait for 3 sec
