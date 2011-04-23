class CreateClienteles < ActiveRecord::Migration
	def self.up
		create_table :clienteles do |t|
			t.string :name

			t.timestamps
		end
	end

	def self.down
		drop_table :clienteles
	end
end
