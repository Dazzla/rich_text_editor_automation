class EditorClient

  def self.set_content_in_editor(content)
    $driver.execute_script("tinyMCE.activeEditor.setContent('#{content}')")
  end

  def insert_content_at_caret_position(content)
    $driver.execute_script("tinyMCE.activeEditor.insertContent('#{content}')")
  end

end