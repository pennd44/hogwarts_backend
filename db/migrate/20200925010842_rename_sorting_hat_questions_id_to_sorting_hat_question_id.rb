class RenameSortingHatQuestionsIdToSortingHatQuestionId < ActiveRecord::Migration[6.0]
  def change
    rename_column :sorting_hat_answers, :sorting_hat_questions_id, :sorting_hat_question_id
  end
end
