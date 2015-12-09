class AddDescribtionColumnToTests < ActiveRecord::Migration
  def change
    add_column :tests, :describtion, :text
  end
end
