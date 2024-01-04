@outline-ask1116
  Feature: Outline-ask1116

    Background: Teacher Login
      Given I open url "http://ask-stage.portnov.com"
      Then I type "Teacher1_369@fugmi.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "123Qwerty" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for 2 sec
      And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
      And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"

    @createQuiz
    Scenario Outline: Create a quiz
      And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
      And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
      And I wait for element with xpath "//input[@formcontrolname='name']" to be present
      And I type "<QuizName>" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
      And I click on element with xpath "//mat-radio-button[3]"
      And I type "<TestQuestion>" into element with xpath "//textarea[@formcontrolname='question']"
      And I wait for 1 sec
      And I type "<FirstOption>" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
      And I type "<SecondOption>" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
      And I create <NumberOfOptions> options
      And I choose <CorrectOpt1> as correct option
      And I choose <CorrectOpt2> as correct option
      And I choose <CorrectOpt3> as correct option
      Then I wait for 2 sec
      Then I click on element with xpath "//button[contains(., 'Save')]"
      Then I wait for 2 sec

      Examples:
        |QuizName   |TestQuestion  |FirstOption|SecondOption|NumberOfOptions|CorrectOpt1|CorrectOpt2|CorrectOpt3|
        |Quiz1a     |TestQuestion1 |Option 1   |Option 2    |5              |1          |4          |5          |
        |Quiz2a     |TestQuestion1 |Option 1   |Option 2    |15             |2          |3          |15         |
        |Quiz3a     |TestQuestion1 |Option 1   |Option 2    |1              |1          |2          |3          |
        |Quiz4a     |TestQuestion1 |Option 1   |Option 2    |30             |4          |12         |30         |

    @deleteQuiz
    Scenario Outline: Deleting Quiz
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      Then I scroll to the element with xpath "//*[contains(text(),'<QuizName>')]/../.." with offset 0
      Then I wait for 5 sec
      Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../.."
      Then I wait for 3 sec
      Then I wait for element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Delete')]/.." to be present
      Then I click on element with xpath "//*[contains(text(),'<QuizName>')]/../../..//*[contains(text(),'Delete')]/.."
      Then I wait for element with xpath "//mat-dialog-container" to be present
      Then I click on element with xpath "//mat-dialog-container/..//button/span[contains(text(),'Delete')]/.."
      Then I wait for 2 sec

      Examples:
        |QuizName   |
        |Quiz1a     |
        |Quiz2a     |
        |Quiz3a     |
        |Quiz4a     |