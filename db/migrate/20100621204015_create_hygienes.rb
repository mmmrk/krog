class CreateHygienes < ActiveRecord::Migration
	def self.up
		create_table :hygienes do |t|
			t.string :name

			t.timestamps
		end
	end

	def self.down
		drop_table :hygienes
	end
end
