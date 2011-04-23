class CreateSoundLevels < ActiveRecord::Migration
	def self.up
		create_table :sound_levels do |t|
			t.string :name

			t.timestamps
		end
	end

	def self.down
		drop_table :sound_levels
	end
end
