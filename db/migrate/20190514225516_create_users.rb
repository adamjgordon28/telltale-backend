class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :location
      t.integer :age
      t.datetime :user_since
      t.timestamps
    end
  end
end
