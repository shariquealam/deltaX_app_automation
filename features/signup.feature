Feature: New User SignUp

Scenario: To test Entered URL, To Test Signup with valid inputs in all the fields
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Select "Engineering" as Department/office
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.com" in field "email"
    When Enter "9865432708" in field "contact_no"
    Then Is "submit" button "enable"
    Then Click on "submit" Button
    Then I see "Thanks" page

Scenario: To Test Signup with valid inputs only in manditory fields
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.com" in field "email"
    Then Is "submit" button "enable"
    Then Click on "submit" Button
    Then I see "Thanks" page


Scenario: To Test Signup with small length email address.
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "a@g.in" in field "email"
    Then Is "submit" button "enable"
    Then Click on "submit" Button
    Then I see "Thanks" page


Scenario: To test signup fail when any required field is empty
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.com" in field "email"
    Then Clear "Sharique" from field "first_name"
    Then Is "submit" button "disable"
    Then Error messagge "Please enter your First Name" displayed in "first_name" field
    Then Clear "Alam" from field "last_name"
    Then Error messagge "Please enter your Last Name" displayed in "last_name" field
    Then Clear "alam.sharique" from field "user_name"
    Then Error messagge "Please enter your Username" displayed in "user_name" field
    Then Clear "India@2010" from field "user_password"
    Then Error messagge "Please enter your Password" displayed in "user_password" field
    Then Clear "India@2010" from field "confirm_password"
    Then Error messagge "Please confirm your Password" displayed in "confirm_password" field
    Then Clear "alam.sharique@gmail.com" from field "email"
    Then Error messagge "Please enter your Email Address" displayed in "email" field



Scenario: To test signup fail when single character entered in all the fields
    Given I load the website
    Then I see "Registration Form" page
    When Enter "S" in field "first_name"
    When Enter "A" in field "last_name"
    When Enter "a" in field "user_name"
    When Enter "I" in field "user_password"
    When Enter "I" in field "confirm_password"
    When Enter "a" in field "email"
    When Enter "9" in field "contact_no"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "first_name" field
    Then Error messagge "This value is not valid" displayed in "last_name" field
    Then Error messagge "This value is not valid" displayed in "user_name" field
    Then Error messagge "This value is not valid" displayed in "user_password" field
    Then Error messagge "This value is not valid" displayed in "confirm_password" field
    Then Error messagge "This value is not valid" displayed in "email" field
    Then Error messagge "This value is not valid" displayed in "contact_no" field



Scenario: To test signup fail when different password entered in Password and confirm password fields
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "Sharique@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.com" in field "email"
    Then Is "submit" button "disable"


Scenario: To test signup fail when entered username, password, confirm password is less then 8 characters
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam" in field "user_name"
    When Enter "India" in field "user_password"
    When Enter "India" in field "confirm_password"
    When Enter "alam.sharique@gmail.com" in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "user_name" field
    Then Error messagge "This value is not valid" displayed in "user_password" field
    Then Error messagge "This value is not valid" displayed in "confirm_password" field


Scenario: To test signup fail when entered First Name and Last Name is less then 2 characters
    Given I load the website
    Then I see "Registration Form" page
    When Enter "a" in field "first_name"
    When Enter "r" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.com" in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "first_name" field
    Then Error messagge "This value is not valid" displayed in "last_name" field


Scenario: To test signup fail when entered email id format is invalid
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "ShariqueAlam" in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "email" field
    Then Clear "ShariqueAlam" from field "email"
    When Enter "alam.sharique" in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "email" field
    Then Clear "alam.sharique" from field "email"
    When Enter "sharique@" in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "email" field
    Then Clear "sharique@" from field "email"
    When Enter "sharique@gmail." in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "email" field
    Then Clear "sharique@gmail." from field "email"
    When Enter "sharique@.com" in field "email"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "email" field


Scenario: To test signup fail when entered contact no is less then 10 digit
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.ciom" in field "email"
    When Enter "986543278" in field "contact_no"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "contact_no" field


Scenario: To test signup fail when entered contact no is more then 10 digit
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.ciom" in field "email"
    When Enter "98654327834" in field "contact_no"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "contact_no" field


Scenario: To test signup fail when charactar entered in contact no field
    Given I load the website
    Then I see "Registration Form" page
    When Enter "Sharique" in field "first_name"
    When Enter "Alam" in field "last_name"
    When Enter "alam.sharique" in field "user_name"
    When Enter "India@2010" in field "user_password"
    When Enter "India@2010" in field "confirm_password"
    When Enter "alam.sharique@gmail.ciom" in field "email"
    When Enter "qgbsrtysef" in field "contact_no"
    Then Is "submit" button "disable"
    Then Error messagge "This value is not valid" displayed in "contact_no" field

Scenario: TearDown webdriver
    Then TearDown webdriver object