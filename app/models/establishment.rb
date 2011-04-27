class Establishment < ActiveRecord::Base
	has_many :reviews
	belongs_to :category
	belongs_to :opening_hour, :class_name => "Hour", :foreign_key => "opening_hour_id"
	belongs_to :closing_hour, :class_name => "Hour", :foreign_key => "closing_hour_id"
	belongs_to :tapped_beer, :class_name => "Beer", :foreign_key => "tapped_beer_id"
	belongs_to :bottled_beer, :class_name => "Beer", :foreign_key => "bottled_beer_id"

	accepts_nested_attributes_for :opening_hour, :closing_hour, :tapped_beer, :bottled_beer, :allow_destroy => :true ,  :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

	def self.search (value)
		value[:category]
		value[:rating]
		value[:closing_hour]
		value[:opening_hour]
		value[:tapped_beer]
		value[:bottled_beer]
		value[:age_limit]
		value[:locale]
		value[:city]
	end

	def average_rating
		reviews.joins(:rating).average('ratings.value')
	end
end