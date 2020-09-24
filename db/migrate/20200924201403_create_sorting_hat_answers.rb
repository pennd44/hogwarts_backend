class CreateSortingHatAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :sorting_hat_answers do |t|
      t.string :house
      t.string :text

      t.timestamps
    end
  end
end
