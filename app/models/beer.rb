class Beer < ActiveRecord::Base
	belongs_to :sort
	belongs_to :country
	has_many :establishments
end
