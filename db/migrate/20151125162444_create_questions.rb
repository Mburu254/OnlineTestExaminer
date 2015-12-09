class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.integer :test_id
      t.string  :number
      t.text    :content
      t.string  :A
      t.string  :B
      t.string  :C
      t.string  :D
      t.string  :answer 
      t.integer :mark

      t.timestamps null: false
    end
  end
end
