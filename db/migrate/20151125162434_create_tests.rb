class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|

      t.integer :user_id

      t.string :name
      t.string :time

      t.timestamps null: false
    end
  end
end
