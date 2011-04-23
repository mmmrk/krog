class CreateReviews < ActiveRecord::Migration
	def self.up
		create_table :reviews do |t|
			t.integer :rating
			t.date :visit_date
			t.text :comment
			t.references :establishment
			t.references :category
			t.references :clientele
			t.references :sound_level
			t.references :hygiene

			t.timestamps
		end
	end

	def self.down
		drop_table :reviews
	end
end
