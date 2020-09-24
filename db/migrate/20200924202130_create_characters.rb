class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :house
      t.boolean :is_student
      t.string :image
      t.integer :birthyear
      t.string :patronus

      t.timestamps
    end
  end
end
