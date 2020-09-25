class AddColumnToSortingHatAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :sorting_hat_answers, :image, :string
  end
end
