Feature: TinyMCE Editing
  As an editor
  I want to make edits in the TinyMCE console

  @exclude
  Scenario: Enter text into console
    When I enter text into the TinyMCE console
    Then I should see that text on the page
