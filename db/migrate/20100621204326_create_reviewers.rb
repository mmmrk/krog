class CreateReviewers < ActiveRecord::Migration
	def self.up
		create_table :reviewers do |t|
			t.references :person
			t.references :review

			t.timestamps
		end
	end

	def self.down
		drop_table :reviewers
	end
end
