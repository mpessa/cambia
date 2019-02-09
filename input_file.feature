Feature: Read the input file

  Scenario: Input file exists
    Given the input file exists
    When I open the input file
    Then no error occurs

  Scenario: Input file does not exist
    Given then input file does not exist
    When I open the input file
    Then I see "The input file does not exist."

# These steps would be very beneficial because they ensure that the
# input file exists and ensures that an error occurs when the file does not
# exist.