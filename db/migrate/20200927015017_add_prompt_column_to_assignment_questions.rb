class AddPromptColumnToAssignmentQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :prompt, :text
  end
end
