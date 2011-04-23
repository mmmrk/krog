class Hour < ActiveRecord::Base
	has_many :establishments

	def self.parse (hours)
		hour = Hour.new

		column_names.select { |e| e != "created_at" &&  e != "updated_at" && e != "id"}.each do |day|
			h = hours["#{day}(4i)"]
			m = hours["#{day}(5i)"]
			current_time = Time.now
			time = Time.utc(current_time.year, current_time.month, current_time.day, h, m)
			hour.send("#{day}=", time)
		end

		hour
	end
	
	def to_day
		send Time.now.strftime("%A").downcase
	end	
end