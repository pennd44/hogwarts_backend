class AddColumnToStudentAssignments < ActiveRecord::Migration[6.0]
  def change
    add_column :student_assignments, :text, :text
  end
end
