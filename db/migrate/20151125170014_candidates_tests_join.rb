class CandidatesTestsJoin < ActiveRecord::Migration
  def change
  	def up
    create_table :candidates_tests, :id => false do |t|

    	t.integer :test_id
    	t.string :candidate_email
    end
    add_index :candidates_tests, [:test_id, :candidate_email]
  end
  end
end
