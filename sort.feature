Feature: Sorting of the strings

  Scenario: Sorting occurs
    Given a file with 'bob,alpha'
    When I sort the strings
    Then the first letter is 'a'