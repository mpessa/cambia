Feature: Sorting of the strings

  Scenario: Sorting occurs
    Given a file with 'bob,alpha'
    When I sort the strings
    Then the first letter is 'a'

# This test exclusively ensures that the sort is working properly
# which is the main function of this program.