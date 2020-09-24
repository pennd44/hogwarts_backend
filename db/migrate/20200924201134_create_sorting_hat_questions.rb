class CreateSortingHatQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :sorting_hat_questions do |t|
      t.text :question 

      t.timestamps
    end
  end
end
