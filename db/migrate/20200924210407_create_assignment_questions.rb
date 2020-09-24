class CreateAssignmentQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :assignment_questions do |t|
      t.text :question 
      t.integer :assignment_id
      t.timestamps
    end
  end
end
