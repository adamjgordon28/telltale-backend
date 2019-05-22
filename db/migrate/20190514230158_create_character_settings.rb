class CreateCharacterSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :character_settings do |t|
      t.string :description
      t.integer :character_id
      t.integer :setting_id
      t.integer :chapter
      t.timestamps
    end
  end
end
