class Rating < ActiveRecord::Base
	has_many :reviews
end
