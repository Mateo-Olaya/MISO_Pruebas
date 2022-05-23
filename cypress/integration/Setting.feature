Feature: Settings features

  I want to modify the site settings

  @focus
  Scenario: Change site title with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear title field
    And I save settings
    Then I see the settings saved message

  @focus
  Scenario: Change site title with more than 150 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear title field
    And I type a title with "151" characters
    And I save settings
    Then I should see a title message error

  @focus
  Scenario: Change site title with less than 150 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear title field
    And I type a title with "100" characters
    And I save settings
    Then I should not see a title message error

  @focus
  Scenario: Change site title with 150 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear title field
    And I type a title with "150" characters
    And I save settings
    Then I should not see a title message error

  @focus
  Scenario: Change site description with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear description field
    And I save settings
    Then I see the settings saved message

  @focus
  Scenario: Change site description with more than 200 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear description field
    And I type a description with "201" characters
    And I save settings
    Then I should see a description message error

  @focus
  Scenario: Change site description with less than 200 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear title field
    And I type a description with "150" characters
    And I save settings
    Then I should not see a description message error

  @focus
  Scenario: Change site description with 200 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I clear title field
    And I type a description with "200" characters
    And I save settings
    Then I should not see a description message error

  @focus
  Scenario: Change site language with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I expand language
    And I clear language field
    And I save settings
    Then I should see a language message error

  @focus
  Scenario: Change site language with more than 10000 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I expand language 
    And I clear language field
    And I type a language with "10001" characters
    And I save settings
    Then I should see a language message error

  @focus
  Scenario: Change site language with less than 10000 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I expand language
    And I clear language field
    And I type a language with "10000" characters
    And I save settings
    Then I should not see a language message error

  @focus
  Scenario: Change site language with 10000 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand title and description
    And I expand language
    And I clear language field
    And I type a language with "5000" characters
    And I save settings
    Then I should not see a language message error
  
  @focus
  Scenario: Change site meta data title with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data title field
    And I save settings
    Then I see the settings saved message

  @focus
  Scenario: Change site meta data title with more than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data title field
    And I type a meta data title with "301" characters
    And I save settings
    Then I should see a meta data title message error

  @focus
  Scenario: Change site meta data title with 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data title field
    And I type a meta data title with "300" characters
    And I save settings
    Then I should not see a meta data title message error

  @focus
  Scenario: Change site meta data title with less than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data title field
    And I type a meta data title with "150" characters
    And I save settings
    Then I should not see a meta data title message error

  @focus  
  Scenario: Change site meta data description with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data description field
    And I save settings
    Then I see the settings saved message

  @focus
  Scenario: Change site meta data description with more than 500 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data description field
    And I type a meta data description with "501" characters
    And I save settings
    Then I should see a meta data description message error

  @focus
  Scenario: Change site meta data description with 500 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data description field
    And I type a meta data description with "500" characters
    And I save settings
    Then I should not see a meta data description message error

  @focus
  Scenario: Change site meta data description with less than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand meta data
    And I clear meta data description field
    And I type a meta data description with "300" characters
    And I save settings
    Then I should not see a meta data description message error

  @focus
  Scenario: Change site twitter title with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter title field
    And I save settings
    Then I see the settings saved message

  @focus
  Scenario: Change site twitter title with more than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter title field
    And I type a twitter title with "301" characters
    And I save settings
    Then I should see a twitter title message error
 
  @focus
  Scenario: Change site twitter title with 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter title field
    And I type a twitter title with "300" characters
    And I save settings
    Then I should not see a twitter title message error
 
  @focus
  Scenario: Change site twitter title with less than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter title field
    And I type a twitter title with "150" characters
    And I save settings
    Then I should not see a twitter title message error

  @focus
  Scenario: Change site twitter description with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter description field
    And I save settings
    Then I see the settings saved message
    
  @focus
  Scenario: Change site twitter description with more than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter description field
    And I type a twitter description with "301" characters
    And I save settings
    Then I should see a twitter description message error

  @focus
  Scenario: Change site twitter description with 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter description field
    And I type a twitter description with "300" characters
    And I save settings
    Then I should not see a twitter description message error

  @focus
  Scenario: Change site twitter description with less than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand twitter
    And I clear twitter description field
    And I type a twitter description with "150" characters
    And I save settings
    Then I should not see a twitter description message error

  @focus
  Scenario: Change site facebook title with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook title field
    And I save settings
    Then I see the settings saved message

  @focus
  Scenario: Change site facebook title with more than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook title field
    And I type a facebook title with "301" characters
    And I save settings
    Then I should see a facebook title message error
 
  @focus
  Scenario: Change site facebook title with 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook title field
    And I type a facebook title with "300" characters
    And I save settings
    Then I should not see a facebook title message error
 
  @focus
  Scenario: Change site facebook title with less than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook title field
    And I type a facebook title with "150" characters
    And I save settings
    Then I should not see a facebook title message error

  @focus
  Scenario: Change site facebook description with non characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook description field
    And I save settings
    Then I see the settings saved message
    
  @focus
  Scenario: Change site facebook description with more than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook description field
    And I type a facebook description with "301" characters
    And I save settings
    Then I should see a facebook description message error

  @focus
  Scenario: Change site facebook description with 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook description field
    And I type a facebook description with "300" characters
    And I save settings
    Then I should not see a facebook description message error

  @focus
  Scenario: Change site facebook description with less than 300 characters
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand facebook
    And I clear facebook description field
    And I type a facebook description with "150" characters
    And I save settings
    Then I should not see a facebook description message error

  @focus
  Scenario: Set a correct facebook account
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand social
    And I clear social facebook field
    And I type a correct social facebook account
    And I save settings
    Then I should not see a social facebook message error
  
  @focus
  Scenario: Set an incorrect facebook account
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand social
    And I clear social facebook field
    And I type an incorrect social facebook account
    And I save settings
    Then I should see a social facebook message error

  @focus
  Scenario: Set a correct twitter account
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand social
    And I clear social twitter field
    And I type a correct social twitter account
    And I save settings
    Then I should not see a social twitter message error
  
  @focus
  Scenario: Set an incorrect twitter account
    Given I open Ghost admin page
    When I login into the admin page
    And I go to the settings page
    And I go to general settings page
    And I expand social
    And I clear social twitter field
    And I type an incorrect social twitter account
    And I save settings
    Then I should see a social twitter message error