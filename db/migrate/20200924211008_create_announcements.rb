class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.text :content
      t.references :teacher
      t.timestamps
    end
  end
end
