Feature: Create the output file

  Scenario: Output file can be created
    Given the user has permission to create files
    When I create the output file
    Then the file exists

  Scenario: Output file cannot be created
    Given the user does not have permission to create files
    When I create the output file
    Then I see "Something went wrong writing the output file."

# These tests would be very beneficial because they are checking the user
# permissions.