class CreateHours < ActiveRecord::Migration
	def self.up
		create_table :hours do |t|
			t.time :monday
			t.time :tuesday
			t.time :wednseday
			t.time :thursday
			t.time :friday
			t.time :saturday
			t.time :sunday

			t.timestamps
		end
	end

	def self.down
		drop_table :hours
	end
end
