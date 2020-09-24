class CreateStudentAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :student_assignments do |t|
      t.references :student
      t.integer :assignment_id

      t.timestamps
    end
  end
end
