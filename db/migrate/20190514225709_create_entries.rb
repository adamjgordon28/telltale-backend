class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :genre
      t.datetime :start_date
      t.datetime :publish_date
      t.boolean :published
      t.integer :user_id
      t.timestamps
    end
  end
end
