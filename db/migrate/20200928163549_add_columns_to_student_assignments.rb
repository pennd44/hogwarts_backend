class AddColumnsToStudentAssignments < ActiveRecord::Migration[6.0]
  def change
    add_column :student_assignments, :score, :integer
    add_column :student_assignments, :feedback, :text
  end
end
