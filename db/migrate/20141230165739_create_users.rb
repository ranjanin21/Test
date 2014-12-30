class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_level
      t.date :registered_since
      t.string :topic
      t.integer :warnings

      t.timestamps
    end
  end
end
