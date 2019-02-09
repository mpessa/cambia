Feature: Read the input file

  Scenario: Input file exists
    Given the input file exists
    When I open the input file
    Then no error occurs

  Scenario: Input file does not exist
    Given then input file does not exist
    When I open the input file
    Then I see "The input file does not exist."