class CreateEstablishments < ActiveRecord::Migration
	def self.up
		create_table :establishments do |t|
			t.string :name
			t.string :locale
			t.string :city
			t.integer :wardrobe_fee
			t.integer :entrance_fee
			t.time :entrance_fee_start
			t.text :comment
			t.integer :age_limit
			t.references :category
			
			t.integer :tapped_beer_id
			t.integer :bottled_beer_id
			
			t.integer :tapped_beer_price
			t.integer :bottled_beer_price
			
			t.integer :opening_hour_id
			t.integer :closing_hour_id

			t.timestamps
		end
	end

	def self.down
		drop_table :establishments
	end
end
