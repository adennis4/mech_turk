Feature: User creates identity

  Scenario:
    Given I am a first time user
    When I enter my information
    And I click on "Take Survey"
    Then I see the welcome page

