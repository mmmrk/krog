class Reviewer < ActiveRecord::Base
	belongs_to :person
	belongs_to :review
end
