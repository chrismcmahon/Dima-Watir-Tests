Feature: Downshift Controls on Netlify

  Background:
    Given I navigate to Dima

  Scenario: Basic Example
    Given I transform an image
      And the image exists
    When I click grayscale
      And I rotate "45" degrees and resize "2"
      And I flip image vertically and horizontally
      And I persist the image
    Then I should see the transformed image
