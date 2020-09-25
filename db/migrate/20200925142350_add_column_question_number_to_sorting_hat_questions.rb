class AddColumnQuestionNumberToSortingHatQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :sorting_hat_questions, :number, :integer
  end
end
