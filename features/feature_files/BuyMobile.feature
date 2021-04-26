Feature: Gomo Buy a SIM Page check

  @Optus_shop
  Scenario Outline: Gomo Buy a SIM page for component validation
    Given I load "https://www.optus.com.au/" in the browser
    When Optus home page is loaded in the browser
    Then I click on "Shop" button
    And I click on "Latest Phones" from dropdown

    And I landed on Shop page
    And I clicked on the "All Brands" dropdown
    And I select brand name for filter
    And I clicked on the "All Internal Memory" dropdown
    And I select memory for filter
    And I clicked on the "All Network Speed" dropdown
    And I select internet speed for filter
    And I clicked on the "All Payment Terms" dropdown
    And I select payment terms for filter
    And I clicked on the "All Sort" dropdown
    And I sort by "<Sort_by>"
    Examples:
      |Sort_by  |
      | High    |
      | Low     |

  @Optus_shop_purchase
  Scenario: Gomo Buy a SIM page for component validation
    Given I load "https://www.optus.com.au/" in the browser
    When Optus home page is loaded in the browser
    Then I click on "Shop" button

    And I click on "Data SIMs" from dropdown
    And I landed on Data Sim page
    And I click on "BUY NOW" button in Datasim page
    And I am selecting "I'm new to Optus radio button" from radio button
    And I am selecting "Proceed to checkout as a new customer" from selection
    And User click on "Proceed to Cart" button


  @Optus_shop_purchase_2
  Scenario: Gomo Buy a SIM page for component validation
    Given I load "https://www.optus.com.au/" in the browser
    When Optus home page is loaded in the browser
    Then I click on "Shop" button

    And I click on "iPads & Tablets" from dropdown
    And I am selecting "Select Device iPad (8th gen)" tablet from selection
    And I landed on purchase page
    And I select plan from Device
    And I am selecting "I'm new to Optus radio button" from radio button
    And I am selecting "Proceed to checkout as a new customer" from selection
    And User click on "Proceed to Cart" button