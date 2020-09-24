class AddSortingHatQuestionsIdToSortingHatAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :sorting_hat_answers, :sorting_hat_questions_id, :integer
  end
end
