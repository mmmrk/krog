class CorrectMissSpelledWednesdayInHour < ActiveRecord::Migration
	def self.up
		rename_column :hours, :wednseday, :wednesday
	end

	def self.down
		rename_column :hours, :wednesday, :wednseday
	end
end
