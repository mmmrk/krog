class Review < ActiveRecord::Base
	belongs_to :establishment
	belongs_to :category
	belongs_to :clientele
	belongs_to :sound_level
	belongs_to :hygiene
	belongs_to :rating
	has_many :reviewers
	
	accepts_nested_attributes_for :establishment, :category, :clientele, :sound_level, :hygiene, :rating, :allow_destroy => :true ,  :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } } 
end
