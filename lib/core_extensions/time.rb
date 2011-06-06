class Time
	def self.current_day
		Time.now.strftime("%A").downcase
	end
end