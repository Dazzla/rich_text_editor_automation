When(/^I enter text into the TinyMCE console$/) do
  $driver.get('http://yizeng.me/2014/01/31/test-wysiwyg-editors-using-selenium-webdriver/')
  EditorClient.set_content_in_editor("<b>Addedit<b>")
end

Then(/^I should see that text on the page$/) do
  tinymce_frame = $driver.find_element(:id => 'tinymce-editor_ifr')
  $driver.switch_to.frame(tinymce_frame)
  content = $driver.find_element(:tag_name => 'body').text
  content.should include "Addedit"
end