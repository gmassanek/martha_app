Feature: Manage Users
  In order to add a user
  As a user
  I want to create and manage users

  Scenario: Users List
    Given I am a User named Martha
    When I go to admin users
    Then I should see "Martha"
