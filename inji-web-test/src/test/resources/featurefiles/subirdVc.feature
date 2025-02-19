Feature: Login using Sunbird Credentials

  @smoke @VerifyAndDownloadVcViaSunbirdInsurance
  Scenario Outline: download vc via sunbird
    Given Load application url "https://inji.qa-inji.mosip.net/"
    Then User gets the title of the page
    And User search the issuers with "Insurance"
    And User verify sunbird cridentials button
    And User click on sunbird cridentials button
    Then User verify list of credential types displayed
    And User verify sunbird rc insurance verifiable credential displayed
    And User click on sunbird rc insurance verifiable credential button
    And User enter the policy number "<policy number>"
    And User enter the full name  "<full name>"
    And User enter the date of birth "<date of birth>"
    And User click on login button
#    And User verify pdf is downloaded
    Then User verify Download Success text displayed
    And User verify go home button
    And User verify go back button

    Examples:
      | policy number | full name | date of birth |
      | 120786786    | PolicyTestAutomation     | 01-01-2024    |

  @smoke @VerifyAndDownloadVcViaSunbirdLife
  Scenario Outline: download vc via sunbird
    Given Load application url "https://inji.qa-inji.mosip.net/"
    Then User gets the title of the page
    And User search the issuers with "Insurance"
    And User verify sunbird cridentials button
    And User click on sunbird cridentials button
    Then User verify list of credential types displayed
    And User verify life Insurance displayed
    And User click on life Insurance button
    And User verify policy number input box header
    And User enter the policy number "<policy number>"
    And User verify full name input box header
    And User enter the full name  "<full name>"
    And User verify date of birth input box header
    And User enter the date of birth "<date of birth>"
    And User click on login button
    Then User verify Download Success text displayed
    And User verify go home button
    And User verify go back button

    Examples:
      | policy number | full name | date of birth |
      |    120786786 | PolicyTestAutomation     | 01-01-2024    |
#
  @smoke @VerifyAndDownloadVcViaSunbirdLifeWithInvalidPolicyNumber
  Scenario Outline: download vc via sunbird
    Given Load application url "https://inji.qa-inji.mosip.net/"
    Then User gets the title of the page
    And User search the issuers with "Insurance"
    And User verify sunbird cridentials button
    And User click on sunbird cridentials button
    Then User verify list of credential types displayed
    And User verify life Insurance displayed
    And User click on life Insurance button
    And User verify policy number input box header
    And User enter the policy number "<policy number>"
    And User verify full name input box header
    And User enter the full name  "<full name>"
    And User verify date of birth input box header
    And User enter the date of birth "<date of birth>"
    And User click on login button
    Then User verify authentication failed message

    Examples:
      | policy number | full name | date of birth |
      |     1207202 | PolicyTestName     | 01-01-2024    |
#
  @smoke @VerifyAndDownloadVcViaVehicleInsuranceWithInvaildName
  Scenario Outline: download vc via sunbird
    Given Load application url "https://inji.qa-inji.mosip.net/"
    Then User gets the title of the page
    And User search the issuers with "Insurance"
    And User verify sunbird cridentials button
    And User click on sunbird cridentials button
    Then User verify list of credential types displayed
    And User verify Vehicle Insurance displayed
    And User click on Vehicle Insurance button
    And User verify policy number input box header
    And User enter the policy number "<policy number>"
    And User verify full name input box header
    And User enter the full name  "<full name>"
    And User verify date of birth input box header
    And User enter the date of birth "<date of birth>"
    And User click on login button
    Then User verify authentication failed message

    Examples:
      | policy number | full name | date of birth |
      |     120786786 | PolicyTestNam     | 01-01-2024    |

  @smoke @VerifyAndDownloadVcViaVehicleInsurance
  Scenario Outline: download vc via sunbird
    Given Load application url "https://inji.qa-inji.mosip.net/"
    Then User gets the title of the page
    And User search the issuers with "Insurance"
    And User verify sunbird cridentials button
    And User click on sunbird cridentials button
    Then User verify list of credential types displayed
    And User verify Vehicle Insurance displayed
    And User click on Vehicle Insurance button
    And User verify policy number input box header
    And User enter the policy number "<policy number>"
    And User verify full name input box header
    And User enter the full name  "<full name>"
    And User verify date of birth input box header
    And User enter the date of birth "<date of birth>"
    And User click on login button
#    And User verify pdf is downloaded
    Then User verify Download Success text displayed

    Examples:
      | policy number | full name | date of birth |
      |    120786786 | PolicyTestAutomation     | 01-01-2024    |